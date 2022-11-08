import { HttpClient, HttpResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';
import { HeaderComponent } from 'src/app/header/header.component';
import { GrupoA } from 'src/app/painel/lista-paineis/Interfaces/grupo-a';
import { __await } from 'tslib';

@Component({
  selector: 'app-lista-paineis',
  templateUrl: './lista-paineis.component.html',
  styleUrls: ['./lista-paineis.component.css'],
  providers:[HeaderComponent]
})
export class ListaPaineisComponent implements OnInit {
  Usuario: string = "";

  GrupoA = {
    Qatar: 0,
    Equador: 0,
    Senegal: 0,
    Holanda: 0,
  };
  ArrayA: string []= [];
  data: any; 

  constructor(private jwtHelper: JwtHelperService, private router: Router, private http:  HttpClient) { }
  
  ngOnInit(): void {
    this.getUsuario ();
    this.http.post<any>('https://localhost:7288/api/Painel', { usuario: this.Usuario }).subscribe(data => {
        this.data = data, this.GrupoA.Equador = data.equador, this.GrupoA.Qatar = data.qatar, 
        this.GrupoA.Holanda = data.holanda, this.GrupoA.Senegal = data.senegal 
      })
    this.Organize();    
  }

  Organize () {
      var arrayA = Object.values(this.GrupoA);
      arrayA.sort();
      var count:number = 0;
      for (const [key, value] of Object.entries(this.GrupoA)) {
        if (value == arrayA[count]){
          this.ArrayA[count] = key;
        }
        count = count +1
      }
      };
  
  
  navegarGrupoA = () => {
      this.router.navigate(['grupoA']);
    }
  
  isUserAuthenticated = (): boolean => {
    const token = localStorage.getItem("jwt");
    if (token && !this.jwtHelper.isTokenExpired(token)){
      return true;
    }
    return false;
  }

   getUsuario () {
    const token = localStorage.getItem('jwt');

    if (token) {
    const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
  }
}


  
  
  
}

