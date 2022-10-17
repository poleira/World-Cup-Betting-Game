import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-grupo-d',
  templateUrl: './grupo-d.component.html',
  styleUrls: ['./grupo-d.component.css'],
})
export class GrupoDComponent implements OnInit {
  Franca: number = 0;
  Australia: number = 0;
  Dinamarca: number = 0;
  Tunisia: number = 0;
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
      Franca: this.Franca,
      Australia: this.Australia,
      Dinamarca: this.Dinamarca,
      Tunisia: this.Tunisia,
      Usuario: this.Usuario,
    });
  }
}
