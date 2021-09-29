import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { IngresarComponent } from './Login/ingresar/ingresar.component';
import { RegistroComponent } from './Acta/registro/registro.component';
import { HttpClientModule } from '@angular/common/http';
import { appRoutingModule } from './app.routing';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ToastrModule } from 'ngx-toastr';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RegistroUsuarioComponent } from './Usuario/registro-usuario/registro-usuario.component';
import { NgxMaskModule, IConfig } from 'ngx-mask';
import { ListaComponent } from './Acta/lista/lista.component';
import { CabeceraComponent } from './Layout/cabecera/cabecera.component';
import { DlDateTimeDateModule, DlDateTimePickerModule } from 'angular-bootstrap-datetimepicker';

export const options: Partial<IConfig> | (() => Partial<IConfig>) = null;

@NgModule({
  declarations: [
    AppComponent,
    IngresarComponent,
    RegistroComponent,
    RegistroUsuarioComponent,
    ListaComponent,
    CabeceraComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    appRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule, // required animations module
    ToastrModule.forRoot(), // ToastrModule added
    NgxMaskModule.forRoot(),
    DlDateTimeDateModule,  // <--- Determines the data type of the model
    DlDateTimePickerModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
