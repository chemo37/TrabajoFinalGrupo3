import { Component, OnInit } from '@angular/core';
import { DatosService } from '../../Servicio/datos.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Router, ActivatedRoute } from '@angular/router';
import { AccesoService } from '../../Servicio/acceso.service';


@Component({
  selector: 'app-registro-usuario',
  templateUrl: './registro-usuario.component.html',
  styleUrls: ['./registro-usuario.component.css']
})
export class RegistroUsuarioComponent implements OnInit {

  arrtipodocumento : any;
  arrtipoperfil : any;

  formGroup : FormGroup;

  constructor(private datosService : DatosService, 
    private toastr: ToastrService, 
    public accesoService : AccesoService,
    
    private router: Router) { }

  ngOnInit(): void {
    this.initForm();
    this.listarTipoDocumento();
    this.listarTipoPerfil();
  }


  initForm(){
    this.formGroup = new FormGroup({
      seltipodocumento: new FormControl(null, [Validators.required]), 
      numdocumento: new FormControl(null, [Validators.required]),
      apellidos: new FormControl(null, [Validators.required]),
      nombres: new FormControl(null, [Validators.required]),
      perfilusuario: new FormControl(null, [Validators.required]),
      nombreusuario: new FormControl(null, [Validators.required]),
      claveusuario: new FormControl(null, [Validators.required])
      
    })
  }


  listarTipoDocumento(){

    this.datosService.listatipodocumento().subscribe(result => {
      console.log("listatipodocumento->", result);
      this.arrtipodocumento = result;
    })
  }
  
  listarTipoPerfil(){

    this.datosService.listatipoperfil().subscribe(result => {
      console.log("listatipoperfil->", result);
      this.arrtipoperfil = result;
    })
  }

  onSubmit() {

    var seltipodocumento  = this.datosForm.seltipodocumento.value;
    var numdocumento =  this.datosForm.numdocumento.value;
    var apellidosdata =  this.datosForm.apellidos.value;
    var nombres =  this.datosForm.nombres.value;
    var perfilusuario =  this.datosForm.perfilusuario.value;
    var nombreusuario =  this.datosForm.nombreusuario.value;
    var claveusuario =  this.datosForm.claveusuario.value;

    console.log(seltipodocumento, numdocumento, apellidosdata,nombres, perfilusuario, nombreusuario,claveusuario  )
    if (this.formGroup.invalid) {
      this.toastr.error('Verificar los datos ingresados', 'Información!');
      return;
    }else{

        let data = {
          idtipodocumento  : seltipodocumento,
          numerodocumento : numdocumento,
          apellidos : apellidosdata,
          nombres : nombres,
          idtipousuario : perfilusuario,
          usuario : nombreusuario,
          clave : claveusuario
        }

      this.accesoService.registroUsuario(data).subscribe(result => {

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
  }

  get datosForm() { return this.formGroup.controls; }

  cerrarSesion(){
    console.log("cierra")
    this.router.navigate([""]);
  }
}
