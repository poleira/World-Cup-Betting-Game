import { GrupoA } from './Interfaces/grupo-a';
import { HttpClient, HttpResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';
import { HeaderComponent } from 'src/app/header/header.component';
import { __await } from 'tslib';

@Component({
  selector: 'app-lista-paineis',
  templateUrl: './lista-paineis.component.html',
  styleUrls: ['./lista-paineis.component.css'],
  providers: [HeaderComponent],
})
export class ListaPaineisComponent implements OnInit {
  Usuario: string = '';

  GrupoA: any;
  ArrayA: any[] = [];
  data: any;

  constructor(
    private jwtHelper: JwtHelperService,
    private router: Router,
    private http: HttpClient
  ) {}

  ngOnInit(): void {
    this.getUsuario();
    this.http
      .post<any>('https://localhost:7288/api/Painel', { usuario: this.Usuario })
      .subscribe((data) => {
        this.data = data;
        this.GrupoA = {
          equador: data.equador,
          qatar: data.qatar,
          holanda: data.holanda,
          senegal: data.senegal,
        };
        this.Organize();
      });
  }

  getPontos(pais: any) {
    return this.data[`${pais}Pontos`];
  }

  Organize() {
    console.log(this.GrupoA);
    this.ArrayA = Object.keys(this.GrupoA).sort(
      (a, b) => this.GrupoA[a] - this.GrupoA[b]
    );

    console.log(this.ArrayA);
  }

  navegarGrupoA = () => {
    this.router.navigate(['grupoA']);
  };

  isUserAuthenticated = (): boolean => {
    const token = localStorage.getItem('jwt');
    if (token && !this.jwtHelper.isTokenExpired(token)) {
      return true;
    }
    return false;
  };

  getUsuario() {
    const token = localStorage.getItem('jwt');

    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
    }
  }
}
