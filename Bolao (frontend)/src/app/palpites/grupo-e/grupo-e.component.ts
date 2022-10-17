import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-grupo-e',
  templateUrl: './grupo-e.component.html',
  styleUrls: ['./grupo-e.component.css'],
})
export class GrupoEComponent implements OnInit {
  Espanha: number = 0;
  CostaRica: number = 0;
  Alemanha: number = 0;
  Japao: number = 0;
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
      Espanha: this.Espanha,
      CostaRica: this.CostaRica,
      Alemanha: this.Alemanha,
      Japao: this.Japao,
      Usuario: this.Usuario,
    });
  }
}
