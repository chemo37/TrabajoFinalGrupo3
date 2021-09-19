import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Idatosacceso } from '../Modelo/idatosacceso';
import { IRptaGeneral } from '../Modelo/irpta-general';
import { IActaLista } from '../Modelo/iacta-lista';
import { environment } from  './../../environments/environment';
import { tap } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ActaService {

  constructor(private http: HttpClient) { }

  registroActa(data): Observable<IRptaGeneral>{
    console.log("REGISTRO ACTITA", data)
    return this.http.post<IRptaGeneral>( 
      environment.urlbaseservicioacta + 'api/acta/registro', 
    {       
               fecharegistro :data.fecharegistro,
               idusuario : data.idusuario,
               condapellynombre : data.condapellynombre,
               idtipodocumento :data.idtipodocumento,
               numerodocumento :data.numerodocumento,
               direccion :data.direccion,
               distrito : data.distrito,
               isvehiculoautorizad : data.isvehiculoautorizad,
               empresaautorizada : data.empresaautorizada,
               ruc : data.ruc,
               numlicenciaconducir : data.numlicenciaconducir,
               fechainfraccion : data.fechainfraccion,
               placarodaje : data.placarodaje,
               lugarinfraccion : data.lugarinfraccion,
               refenciainfraccion :data.refenciainfraccion,
               distritoinfraccion : data.distritoinfraccion,
               idtipoinfraccion : data.idtipoinfraccion,
               idcodigoinfraccion : data.idcodigoinfraccion,
               idmedidapreventiva : data.idmedidapreventiva,
               manifestacioninterv : data.manifestacioninterv,
               descripcionhecho : data.descripcionhecho,
               observacionuno : data.observacionuno,
               observaciondos : data.observaciondos,
               idclasecategoria: data.idclasecategoria,
               claveservicio : environment.claveService,
        }
      ).pipe(tap(
        (res: IRptaGeneral) =>{
         
        }
      ));
  }

  listaActas(): Observable<IActaLista>{

    return this.http.post<IActaLista>( 
      environment.urlbaseservicioacta + 'api/acta/lista', 
    {       
      fechainiconsulta : "01/01/2021",
      fechafinconsulta : "01/01/2021",
      claveservicio : environment.claveService,
        }
      ).pipe(tap(
        (res: IActaLista) =>{
         
        }
      ));
  }
  

}
