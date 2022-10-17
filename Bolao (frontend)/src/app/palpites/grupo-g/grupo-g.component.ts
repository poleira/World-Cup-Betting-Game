import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-grupo-g',
  templateUrl: './grupo-g.component.html',
  styleUrls: ['./grupo-g.component.css'],
})
export class GrupoGComponent implements OnInit {
  Brasil: number = 0;
  Servia: number = 0;
  Suica: number = 0;
  Camaroes: number = 0;
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
      Brasil: this.Brasil,
      Servia: this.Servia,
      Suica: this.Suica,
      Camaroes: this.Camaroes,
      Usuario: this.Usuario,
    });
  }
}
