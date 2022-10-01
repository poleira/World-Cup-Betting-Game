import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PainelRoutingModule } from './painel-routing.module';
import { ListaPaineisComponent } from './lista-paineis/lista-paineis.component';
import { HeaderComponent } from '../header/header.component';


@NgModule({
  declarations: [
    ListaPaineisComponent, HeaderComponent
  ],
  imports: [
    CommonModule,
    PainelRoutingModule
  ]
})
export class PainelModule { }
