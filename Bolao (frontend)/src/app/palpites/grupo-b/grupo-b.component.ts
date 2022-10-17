import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-grupo-b',
  templateUrl: './grupo-b.component.html',
  styleUrls: ['./grupo-b.component.css'],
})
export class GrupoBComponent implements OnInit {
  Inglaterra: number = 0;
  Iran: number = 0;
  USA: number = 0;
  PaisDeGales: number = 0;
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
      Inglaterra: this.Inglaterra,
      Iran: this.Iran,
      USA: this.USA,
      PaisDeGales: this.PaisDeGales,
      Usuario: this.Usuario,
    });
  }
}
