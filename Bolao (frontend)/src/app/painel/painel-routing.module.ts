import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ListaPaineisComponent } from './lista-paineis/lista-paineis.component';

const routes: Routes = [
  {
    path: '',
    component: ListaPaineisComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PainelRoutingModule { }
