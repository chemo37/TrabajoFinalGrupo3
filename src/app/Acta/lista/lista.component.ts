import { Component, OnInit } from '@angular/core';
import { DatosService } from '../../Servicio/datos.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Router, ActivatedRoute } from '@angular/router';
import { AccesoService } from '../../Servicio/acceso.service';
import { ActaService } from '../../Servicio/acta.service';


@Component({
  selector: 'app-lista',
  templateUrl: './lista.component.html',
  styleUrls: ['./lista.component.css']
})
export class ListaComponent implements OnInit {

  arractas : any = [];

  constructor(private router: Router, private actaService:ActaService,public accesoService : AccesoService) { }

  ngOnInit(): void {

    var datoslogin = this.accesoService.getDatosAcceso();
    
    if(datoslogin){
      this.listaractas();

    }
    
  }

  listaractas(){
    this.actaService.listaActas().subscribe(result => {
      console.log("listaActas->", result);
      this.arractas = result;
    })
  }

  cerrarSesion(){
    console.log("cierra")
    this.router.navigate([""]);
  }

}
