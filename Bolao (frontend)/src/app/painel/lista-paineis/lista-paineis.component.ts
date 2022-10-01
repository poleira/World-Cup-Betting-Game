import { Component, OnInit } from '@angular/core';
import { HeaderComponent } from 'src/app/header/header.component';

@Component({
  selector: 'app-lista-paineis',
  templateUrl: './lista-paineis.component.html',
  styleUrls: ['./lista-paineis.component.css'],
  providers:[HeaderComponent]
})
export class ListaPaineisComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}
