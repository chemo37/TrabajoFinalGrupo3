import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Idatosacceso } from '../Modelo/idatosacceso';
import { IRptaGeneral } from '../Modelo/irpta-general';
import { environment } from  './../../environments/environment';
import { tap } from 'rxjs/operators';
import { isNullOrUndefined } from 'util';


@Injectable({
  providedIn: 'root'
})
export class AccesoService {

  constructor(private http: HttpClient) { }

  loginService(data): Observable<Idatosacceso>{
    
    return this.http.post<Idatosacceso>( 
      environment.urlbaseservicioacta + 'api/login/autenticar', 
        { 
          claveservicio : environment.claveService,
          usuario :data.usuario,
          clave : data.clave
        }
      ).pipe(tap(
        (res: Idatosacceso) =>{
          if(res.codigoResultado > 0){
            var dataguarda ={
              codigoUsuario : res.codigoUsuario,
              nombresyapellidos : res.nombresyapellidos,
              tipousuario : res.tipousuario
            }
            this.guardarDatosSession(dataguarda);
          }

        }
      ));
  }

  registroUsuario(data): Observable<IRptaGeneral>{
    
    return this.http.post<IRptaGeneral>( 
      environment.urlbaseservicioacta + 'api/login/registro', 
        {       
           "claveservicio"  :  environment.claveService,
           "idtipodocumento"  : data.idtipodocumento,
           "numerodocumento" : data.numerodocumento,
           "apellidos" : data.apellidos,
           "nombres" : data.nombres,
           "idtipousuario" : data.idtipousuario,
           "usuario" : data.usuario,
           "clave" : data.clave
        }
      ).pipe(tap(
        (res: IRptaGeneral) =>{
         
        }
      ));
  }

  private guardarDatosSession(datasesion): void {
      
    let datosuser : Idatosacceso = {
      codigoUsuario : datasesion.codigoUsuario,
      nombresyapellidos : datasesion.nombresyapellidos,
      tipousuario : datasesion.tipousuario,
      codigoResultado : 1,
      nombreResultado : "ok"
    }

    localStorage.setItem("datosAcceso", JSON.stringify(datosuser));
    //localStorage.setItem("ACCESS_TOKEN", token);
    //localStorage.setItem("EXPIRES_IN", expiresIn);
    //this.token = token;
  }

  getDatosAcceso() : Idatosacceso{
    let datosusuario = localStorage.getItem("datosAcceso");
    if(!isNullOrUndefined(datosusuario)){
      let datos = JSON.parse(datosusuario);
      return datos;
    }else{
      return null;
    }
  }

}
