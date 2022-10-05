import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from '../guards/auth.guard';
import { ListaPaineisComponent } from './lista-paineis/lista-paineis.component';
import { RankComponent } from './rank/rank.component';

const routes: Routes = [
  {
    path: '',
    component: ListaPaineisComponent,
    canActivate: [AuthGuard]
  },
  {
  path: 'rank',
  component: RankComponent,
  canActivate: [AuthGuard]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PainelRoutingModule { }
