import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
{
    path: '',
    pathMatch: 'full',
    redirectTo: 'home'
},
{
    path: 'home',
    loadChildren: ()=> import('./home/home.module').then ((m)=>m.HomeModule)
},
{
  path: 'painel',
  loadChildren: ()=> import('./painel/painel.module').then ((m)=>m.PainelModule)
},
{
  path: 'grupoA',
  loadChildren: ()=> import('./palpites/grupo-a/grupo-a.module').then ((m)=>m.GrupoAModule)
},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
