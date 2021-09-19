import { Component, OnInit } from '@angular/core';
import { AccesoService } from '../../Servicio/acceso.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Router, ActivatedRoute } from '@angular/router';
import { isNullOrUndefined } from 'util';


@Component({
  selector: 'app-ingresar',
  templateUrl: './ingresar.component.html',
  styleUrls: ['./ingresar.component.css']
})
export class IngresarComponent implements OnInit {

  formGroup : FormGroup;

  constructor(private router: Router, public accesoService : AccesoService, private toastr: ToastrService) { }

  ngOnInit(): void {
    console.log("holaaa");
    this.initForm();
    var datoslogin = this.accesoService.getDatosAcceso();
    if(datoslogin){
      this.router.navigate(["registroacta"]);

    }

  }

  initForm(){
    this.formGroup = new FormGroup({
      nombreusuario: new FormControl(null, [Validators.required]), 
      claveusuario: new FormControl(null, [Validators.required])
    })
  }

  onSubmit() {
    var usuarioIngresado  = this.datosForm.nombreusuario.value;
    var pwIngresado =  this.datosForm.claveusuario.value;

    if (this.formGroup.invalid) {
      this.toastr.error('Verificar los datos ingresados', 'Información!');
      return;
    }else{
      console.log("todo bien pe");
        let datalogin = {
          usuario : usuarioIngresado,
          clave : pwIngresado
        }

      this.accesoService.loginService(datalogin).subscribe(result => {
        console.log("resultado->", result);

        if(result.codigoResultado > 0){

          
          this.toastr.success('login ok', 'Información!');
          this.router.navigate(["registroacta"]);
        }else{
          this.toastr.error(result.nombreResultado, 'Información!');
        }
      })
    }
  }

  get datosForm() { return this.formGroup.controls; }
}
