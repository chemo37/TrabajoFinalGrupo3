import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { ITipoDocumento } from '../Modelo/itipo-documento';
import { ITipoPerfil } from '../Modelo/itipo-perfil';
import { IClaseCategoria } from '../Modelo/iclase-categoria';
import { ITIpoInfraccion } from '../Modelo/itipo-infraccion';
import { ICodigoInfraccion } from '../Modelo/icodigo-infraccion';
import { IMedidaPreventiva } from '../Modelo/imedida-preventiva';

import { environment } from  './../../environments/environment';
import { tap } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class DatosService {

  constructor(private http: HttpClient) { }


  listatipodocumento(): Observable<ITipoDocumento>{
    
    return this.http.post<ITipoDocumento>( 
      environment.urlbaseservicioacta + 'api/lista/tipodocumento', 
        { 
        
        }
      ).pipe(tap(
        (res: ITipoDocumento) =>{
         
        }
      ));
  }

  listatipoperfil(): Observable<ITipoPerfil>{
    
    return this.http.post<ITipoPerfil>( 
      environment.urlbaseservicioacta + 'api/lista/perfil', 
        { 
        
        }
      ).pipe(tap(
        (res: ITipoPerfil) =>{
         
        }
      ));
  }

  listaclasecategoria(): Observable<IClaseCategoria>{
    
    return this.http.post<IClaseCategoria>( 
      environment.urlbaseservicioacta + 'api/lista/clasecategoria', 
        { 
        
        }
      ).pipe(tap(
        (res: IClaseCategoria) =>{
         
        }
      ));
  }

  listatipoinfraccion(): Observable<ITIpoInfraccion>{
    
    return this.http.post<ITIpoInfraccion>( 
      environment.urlbaseservicioacta + 'api/lista/tipoinfraccion', 
        { 
        
        }
      ).pipe(tap(
        (res: ITIpoInfraccion) =>{
         
        }
      ));
  }

  listacodigoinfraccion(_idtipoinfraccion : number): Observable<ICodigoInfraccion>{
    
    return this.http.post<ICodigoInfraccion>( 
      environment.urlbaseservicioacta + 'api/lista/codigoinfraccion', 
        { 
          idtipoinfraccion : _idtipoinfraccion

        }
      ).pipe(tap(
        (res: ICodigoInfraccion) =>{
         
        }
      ));
  }

  listamedidapreventiva(): Observable<IMedidaPreventiva>{
    
    return this.http.post<IMedidaPreventiva>( 
      environment.urlbaseservicioacta + 'api/lista/medidapreventiva', 
        { 
        }
      ).pipe(tap(
        (res: IMedidaPreventiva) =>{
         
        }
      ));
  }

}
