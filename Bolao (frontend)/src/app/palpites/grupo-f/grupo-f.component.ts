import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-grupo-f',
  templateUrl: './grupo-f.component.html',
  styleUrls: ['./grupo-f.component.css'],
})
export class GrupoFComponent implements OnInit {
  Belgica: number = 0;
  Canada: number = 0;
  Marrocos: number = 0;
  Croacia: number = 0;
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
      Belgica: this.Belgica,
      Canada: this.Canada,
      Marrocos: this.Marrocos,
      Croacia: this.Croacia,
      Usuario: this.Usuario,
    });
  }
}
