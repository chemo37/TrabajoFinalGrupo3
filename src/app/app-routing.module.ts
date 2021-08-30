import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

import { HomeComponent } from "./pages/home/home.component";
import { ContactusComponent } from "./pages/contactus/contactus.component";
import { AboutusComponent } from "./pages/aboutus/aboutus.component";
import { TeamComponent } from "./pages/team/team.component";
import { ProjectComponent } from "./pages/project/project.component";
import { ApartmentComponent } from "./pages/apartment/apartment.component";
import { ProjectNewComponent } from "./access/project/project-new/project-new.component";
import { ApartmentNewComponent } from "./access/apartment/apartment-new/apartment-new.component";

const routes: Routes = [
    { path: 'home', component: HomeComponent },
    { path: 'contactus', component: ContactusComponent },
    { path: 'aboutus', component: AboutusComponent },
    { path: 'team', component: TeamComponent },
    { path: 'project', component: ProjectComponent },
    { path: 'project/:id', component: ProjectComponent },
    { path: 'apartment', component: ApartmentComponent },
    { path: 'apartment/:projectId/:id', component: ApartmentComponent },
    { path: '', redirectTo: 'home', pathMatch: 'full' },

    { path: 'admin/project/new', component: ProjectNewComponent },
    { path: 'admin/apartment/new', component: ApartmentNewComponent }
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})

export class AppRoutingModule {}