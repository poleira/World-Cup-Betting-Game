import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-grupo-c',
  templateUrl: './grupo-c.component.html',
  styleUrls: ['./grupo-c.component.css'],
})
export class GrupoCComponent implements OnInit {
  Argentina: number = 0;
  ArabiaSaudita: number = 0;
  Mexico: number = 0;
  Polonia: number = 0;
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
      Argentina: this.Argentina,
      ArabiaSaudita: this.ArabiaSaudita,
      Mexico: this.Mexico,
      Polonia: this.Polonia,
      Usuario: this.Usuario,
    });
  }
}
