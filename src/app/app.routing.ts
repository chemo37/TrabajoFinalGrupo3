import { Routes, RouterModule } from '@angular/router';
import { IngresarComponent } from './Login/ingresar/ingresar.component';

import { RegistroComponent } from './Acta/registro/registro.component';
import { ListaComponent } from './Acta/lista/lista.component';
import { RegistroUsuarioComponent } from './Usuario/registro-usuario/registro-usuario.component';

const routes: Routes = [
    { path: '', component: IngresarComponent},
    { path: 'login', component: IngresarComponent},
    { path: 'registroacta', component: RegistroComponent },
    { path: 'lista', component: ListaComponent },
    { path: 'registrousuario', component: RegistroUsuarioComponent },
    // otherwise redirect to home
    { path: '**', redirectTo: '' }
];

export const appRoutingModule = RouterModule.forRoot(routes);
