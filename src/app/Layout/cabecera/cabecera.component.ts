import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { AccesoService } from '../../Servicio/acceso.service';


@Component({
  selector: 'app-cabecera',
  templateUrl: './cabecera.component.html',
  styleUrls: ['./cabecera.component.css']
})
export class CabeceraComponent implements OnInit {

  registrousuario = false;
  registroacta = false;
  lista = false;
  usuarioactual : any;
  perfillogeado : string;
  constructor(private router: Router, private accesoService: AccesoService ) { }

  ngOnInit(): void {
    //this.registroacta = true;
    this.usuarioactual = this.accesoService.getDatosAcceso();

    if(this.usuarioactual){
      this.perfillogeado = this.usuarioactual.tipousuario.toUpperCase();
      this.registroacta = true;
    }else{
      this.router.navigate([""]);
    }
    
  }


  cerrarSesion(){
    console.log("cierra")
    localStorage.setItem("datosAcceso", JSON.stringify(""));
    this.router.navigate([""]);
  }

  clickruta(ruta){

    this.registrousuario = false;
    this.registroacta = false;
    this.lista = false;

    console.log(ruta);

    switch (ruta) {
      case 'registrousuario':
        this.registrousuario = true;
        break;
      case 'registroacta':
        this.registroacta = true;
          break;
      case 'lista':
          this.lista = true;
            break;
      default:
        break;
    }

  }
}
