import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-jogo-br',
  templateUrl: './jogo-br.component.html',
  styleUrls: ['./jogo-br.component.css'],
})
export class JogoBRComponent implements OnInit {
  PlacarBrasilGrupos1: any;
  PlacarBrasilGrupos2: any;
  PlacarBrasilGrupos3: any;
  PlacarBrasilOitavas: any;
  PlacarBrasilQuartas: any;
  PlacarBrasilSemis: any;
  PlacarBrasilFinais: any;
  PlacarAdversarioGrupos1: any;
  PlacarAdversarioGrupos2: any;
  PlacarAdversarioGrupos3: any;
  PlacarAdversarioOitavas: any;
  PlacarAdversarioQuartas: any;
  PlacarAdversarioSemis: any;
  PlacarAdversarioFinais: any;
  HabilitaPalpite: Boolean = true;
  HabilitaPalpiteOitavas: Boolean = false;
  HabilitaPalpiteQuartas: Boolean = false;
  HabilitaPalpiteSemis: Boolean = false;
  HabilitaPalpiteFinais: Boolean = false;
  Usuario: any;
  data: any;

  constructor(
    private httpClient: HttpClient,
    private router: Router,
    private jwtHelper: JwtHelperService
  ) {}

  ngOnInit(): void {
    this.httpClient
      .get<any>('https://localhost:7288/api/HabilitarPalpite', {})
      .subscribe((data) => {
        this.data = data;
      });
  }

  enviarGrupos() {
    const token = localStorage.getItem('jwt');
    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
    }
    var retornoGrupos1: string =
      this.PlacarBrasilGrupos1.toString() +
      this.PlacarAdversarioGrupos1.toString();
    var retornoGrupos2: string =
      this.PlacarBrasilGrupos2.toString() +
      this.PlacarAdversarioGrupos2.toString();
    var retornoGrupos3: string =
      this.PlacarBrasilGrupos3.toString() +
      this.PlacarAdversarioGrupos3.toString();
    console.log(retornoGrupos1, retornoGrupos2, retornoGrupos3);
  }
  enviarOitavas() {
    const token = localStorage.getItem('jwt');
    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
    }
    var retornoOitavas: string =
      this.PlacarBrasilOitavas.toString() +
      this.PlacarAdversarioOitavas.toString();
    console.log(retornoOitavas);
  }
  enviarQuartas() {
    const token = localStorage.getItem('jwt');
    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
    }
    var retornoQuartas: string =
      this.PlacarBrasilQuartas.toString() +
      this.PlacarAdversarioQuartas.toString();
    console.log(retornoQuartas);
  }
  enviarSemis() {
    const token = localStorage.getItem('jwt');
    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
    }
    var retornoSemis: string =
      this.PlacarBrasilSemis.toString() + this.PlacarAdversarioSemis.toString();
    console.log(retornoSemis);
  }
  enviarFinais() {
    const token = localStorage.getItem('jwt');
    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
    }
    var retornoFinais: string =
      this.PlacarBrasilFinais.toString() +
      this.PlacarAdversarioFinais.toString();
    console.log(retornoFinais);
  }
}
