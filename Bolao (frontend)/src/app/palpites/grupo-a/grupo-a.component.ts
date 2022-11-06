import { Usuario } from 'src/app/autenticacao/usuario/usuario';
import { JwtHelperService } from '@auth0/angular-jwt';
import { Router, Routes } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-grupo-a',
  templateUrl: './grupo-a.component.html',
  styleUrls: ['./grupo-a.component.css'],
})
export class GrupoAComponent implements OnInit {
  Qatar: number = 0;
  Ecuador: number = 0;
  Senegal: number = 0;
  Holanda: number = 0;
  Usuario: String = '';

  constructor(
    private httpClient: HttpClient,
    private router: Router,
    private jwtHelper: JwtHelperService
  ) {}

  ngOnInit(): void {}

  goPainel() {
    this.router.navigate(['painel']);
  }

  enviar() {
    const token = localStorage.getItem('jwt');

    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
      console.log(this.Usuario);
    }

    this.httpClient.put('https://localhost:7288/api/BolaoA', {
      Qatar: this.Qatar,
      Ecuador: this.Ecuador,
      Senegal: this.Senegal,
      Holanda: this.Holanda,
      Usuario: this.Usuario,
    });
  }
}