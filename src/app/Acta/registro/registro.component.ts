import { Component, OnInit } from '@angular/core';
import { DatosService } from '../../Servicio/datos.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Router, ActivatedRoute } from '@angular/router';
import { AccesoService } from '../../Servicio/acceso.service';
import { ActaService } from '../../Servicio/acta.service';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent implements OnInit {
  formGroup : FormGroup;
  step: any = 1;
  arrtipodocumento : any;
  arrclasecategoria : any;
  arrtipoinfraccion : any;
  arrcodigoinfraccion : any;
  arrmedidapreventiva : any;
  selectedDate :any;
  usuarioactual : any;

  textotarifapropuesta = null;

  constructor(
    private router: Router, 
    private datosService :DatosService,
    private toastr: ToastrService,
    private accesoService: AccesoService,
    private actaService: ActaService
    
    ) { }

  ngOnInit(): void {
    this.usuarioactual = this.accesoService.getDatosAcceso();

    this.initForm();
    this.listarTipoDocumento();
    this.getclasecategoria();
    this.gettipoInfraccion();
    this.getmedidapreventiva();
  }

  initForm(){
    this.formGroup = new FormGroup({
      intrvapellynomb: new FormControl(null, [Validators.required]), 
      selectTipoDocumento: new FormControl(null, [Validators.required]),
      numdocumento: new FormControl(null, [Validators.required]),
      nombredireccion: new FormControl(null, [Validators.required]),
      distrito: new FormControl(null, [Validators.required]),
      empresaautorizada: new FormControl(null, [Validators.required]),
      numeroruc: new FormControl(null, [Validators.required]),
      radiobtnsino: new FormControl(null, [Validators.required]),
      
      numlicenciaconducir: new FormControl(null, [Validators.required]),
      numplaca: new FormControl(null, [Validators.required]),
      selectclasecategoria: new FormControl(null, [Validators.required]),
      fechainfraccion: new FormControl(null, [Validators.required]),
      fechainfraccionSelect : new FormControl(null, [Validators.required]),
      direccioninfraccion: new FormControl(null, [Validators.required]),
      referenciainfraccion: new FormControl(null, [Validators.required]),
      distritoinfraccion: new FormControl(null, [Validators.required]),
      selecttipoinfraccion: new FormControl(null, [Validators.required]),
      selectcodigoinfraccion: new FormControl(null, [Validators.required]),
      selectmedidapreventiva: new FormControl(null, [Validators.required]),
      observacionmanifestac: new FormControl(null, [Validators.required]),
      descripcionhecho: new FormControl(null, [Validators.required]),
      negidentificarse: new FormControl(null, [Validators.required]),
      radionegativadoc: new FormControl(null, [Validators.required]),

    })
  }


  buscarplacaautorizada(){

    var placabusqueda =(this.datosForm.numplaca.value ? this.datosForm.numplaca.value.trim() : null ); 
    
    if(!placabusqueda){
      // return false;
      this.toastr.error('Debe ingresar una placa válida', 'Alerta!');

    }else{
      this.datosService.getVehiculoAutorizado(placabusqueda).subscribe(result => {
        if(!result.placa){
          this.toastr.error('No se ha encontrado información', 'Alerta!');

        }else{
          this.datosForm.numplaca.setValue(result.placa);
          this.datosForm.selectclasecategoria.setValue(result.clase);
        }

      })
    }

  }

  buscarconductorautorizado(){
    var nrodocumento = (this.datosForm.numdocumento.value ? this.datosForm.numdocumento.value.trim() : null );

    if(!nrodocumento){
      this.toastr.error('Debe ingresar un número de documento válido', 'Alerta!');

    }else{
      this.datosService.getConductorAutorizado(nrodocumento).subscribe(result => {
        
        if(!result.nrodocumento){
          this.toastr.error('No se ha encontrado información', 'Alerta!');

        }else{
          this.datosForm.intrvapellynomb.setValue(result.apellidosynombres);
          this.datosForm.nombredireccion.setValue(result.direccion);
          this.datosForm.distrito.setValue(result.distrito);
          this.datosForm.numlicenciaconducir.setValue(result.nrolicenciaconducir);
        }
        
        // this.datosForm.selectTipoDocumento.setValue(result.tipodocumento);

      })
    }
    
  }

  listarTipoDocumento(){

    this.datosService.listatipodocumento().subscribe(result => {
      this.arrtipodocumento = result;
    })

  }

  getclasecategoria(){
    this.datosService.listaclasecategoria().subscribe(result => {
      this.arrclasecategoria = result;
    })
  }

  onSelectTipoInfra(idtipoinfraccion:any){

    this.datosService.listacodigoinfraccion(idtipoinfraccion).subscribe(result => {
      this.arrcodigoinfraccion = result;
    })
  }


  gettipoInfraccion(){
    this.datosService.listatipoinfraccion().subscribe(result => {
      this.arrtipoinfraccion = result;
    })
  }

  getcodigoinfraccion(){

    this.datosService.listacodigoinfraccion(1).subscribe(result => {
      this.arrcodigoinfraccion = result;
    })

  }

  getmedidapreventiva(){
    this.datosService.listamedidapreventiva().subscribe(result => {
      this.arrmedidapreventiva = result;
    })
  }

  onSubmit(){
    
    if(this.step == 3){


      var fechaseleccionada : Date = new Date(this.selectedDate);
      // console.log("fechaseleccionada", this.selectedDate);
      var fechaformateada_ = (fechaseleccionada ?  (fechaseleccionada.getDate() < 10 ? '0' + fechaseleccionada.getDate() : fechaseleccionada.getDate() )  + '/' + (fechaseleccionada.getMonth()<10 ? '0' + fechaseleccionada.getMonth(): fechaseleccionada.getMonth() ) +'/' + fechaseleccionada.getFullYear() : '');

      this.datosForm.fechainfraccionSelect.setValue(!this.selectedDate ? '' : fechaformateada_);
      var intrvapellynomb = this.datosForm.intrvapellynomb.value;
      var selectTipoDocumento  = this.datosForm.selectTipoDocumento.value;
      var numdocumento = this.datosForm.numdocumento.value;
      var nombredireccion = this.datosForm.nombredireccion.value;
      var distrito = this.datosForm.distrito.value;
      var empresaautorizada = this.datosForm.empresaautorizada.value;
      var numeroruc = this.datosForm.numeroruc.value;
      var numlicenciaconducir = this.datosForm.numlicenciaconducir.value;
      var numplaca = this.datosForm.numplaca.value;
      var selectclasecategoria = this.datosForm.selectclasecategoria.value;
      var fechainfraccion = this.datosForm.fechainfraccion.value;
      var fechainfraccionselect = this.datosForm.fechainfraccionSelect.value;
      var direccioninfraccion = this.datosForm.direccioninfraccion.value;
      var referenciainfraccion = this.datosForm.referenciainfraccion.value;
      var distritoinfraccion = this.datosForm.distritoinfraccion.value;
      var selecttipoinfraccion = this.datosForm.selecttipoinfraccion.value;
      var selectcodigoinfraccion = this.datosForm.selectcodigoinfraccion.value;
      var selectmedidapreventiva = this.datosForm.selectmedidapreventiva.value;
      var observacionmanifestac = this.datosForm.observacionmanifestac.value;
      var descripcionhecho = this.datosForm.descripcionhecho.value;
      var isvehiculoautorizado  = (this.formGroup.get('radiobtnsino').value == "SI" ? 1 : 0 );
      var negidentificarse =  this.formGroup.get('negidentificarse').value;
      var radionegativadoc = this.formGroup.get('radionegativadoc').value;

        // console.log(intrvapellynomb,selectTipoDocumento,numdocumento,nombredireccion,distrito,
        //   empresaautorizada,numeroruc,numlicenciaconducir,numplaca,selectclasecategoria,
        //   fechainfraccion,direccioninfraccion,referenciainfraccion,distritoinfraccion,
        //   selecttipoinfraccion,selectcodigoinfraccion,selectmedidapreventiva,observacionmanifestac,descripcionhecho,isvehiculoautorizado,negidentificarse, radionegativadoc)
        // console.log("fechainfraccion----->",fechainfraccion);
        // console.log("fechainfraccionselect-->", fechainfraccionselect);
   
        if (this.formGroup.invalid) {
          this.toastr.error('Verificar los datos ingresados', 'Información!');
          return;
        }else{
          var datosusuario = this.accesoService.getDatosAcceso();
          var fechaformateada = fechainfraccionselect;//fechainfraccion.substring(0,2)  + "/" +  fechainfraccion.substring(2,4) + "/" + fechainfraccion.substring(4,8) ;

            let dataacta = {
              fecharegistro : "",
              idusuario : datosusuario.codigoUsuario,
              condapellynombre :intrvapellynomb,
              idtipodocumento :selectTipoDocumento,
              numerodocumento :numdocumento,
              direccion : nombredireccion,
              distrito : distrito,
              isvehiculoautorizad : isvehiculoautorizado,
              empresaautorizada : empresaautorizada,
              ruc :numeroruc,
              numlicenciaconducir : numlicenciaconducir,
              fechainfraccion : fechaformateada,
              placarodaje :numplaca,
              lugarinfraccion :direccioninfraccion,
              refenciainfraccion :referenciainfraccion,
              distritoinfraccion : distritoinfraccion,
              idtipoinfraccion :selecttipoinfraccion,
              idcodigoinfraccion : selectcodigoinfraccion,
              idmedidapreventiva : selectmedidapreventiva,
              manifestacioninterv : observacionmanifestac,
              descripcionhecho : descripcionhecho,
              observacionuno : negidentificarse,
              observaciondos : radionegativadoc,
              idclasecategoria: selectclasecategoria,
            }
    
          this.actaService.registroActa(dataacta).subscribe(result => {
    
            if(result.codigoResultado > 0){
              this.toastr.success('Registró OK', 'Información!');
              setTimeout(() => {
                  window.location.reload();
              }, 2000);
            }else{
              this.toastr.error(result.nombreResultado, 'Información!');
            }
          })
        }
    }else{
      this.step = this.step + 1;
    }
    
  }

  dateSelected(event){
    // this.datosForm.fechainfraccion.sele
    //this.datosForm.distrito.setValue(result.distrito);
  }

  regresarstep(){
    this.step = this.step - 1;
  }

  cerrarSesion(){
    this.router.navigate([""]);
  }

  get datosForm() { return this.formGroup.controls; }


}
