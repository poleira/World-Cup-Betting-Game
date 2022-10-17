import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-grupo-h',
  templateUrl: './grupo-h.component.html',
  styleUrls: ['./grupo-h.component.css'],
})
export class GrupoHComponent implements OnInit {
  Portugal: number = 0;
  Gana: number = 0;
  Uruguai: number = 0;
  CoreiaDoSul: number = 0;
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

    this.httpClient.put('https://localhost:7288/api/BolaoB', {
      Portugal: this.Portugal,
      Gana: this.Gana,
      Uruguai: this.Uruguai,
      CoreiaDoSul: this.CoreiaDoSul,
      Usuario: this.Usuario,
    });
  }
}
