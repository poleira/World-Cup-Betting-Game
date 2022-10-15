import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-grupo-a',
  templateUrl: './grupo-a.component.html',
  styleUrls: ['./grupo-a.component.css']
})
export class GrupoAComponent implements OnInit {

  Qatar: number = 0;
  Ecuador: number = 0;
  Senegal: number= 0;
  Holanda: number=0;

  constructor() { }

  ngOnInit(): void {  
  }

  enviar(){
    console.log(this.Ecuador, this.Holanda, this.Qatar, this.Senegal);
    console.log("oi");
  }

}
