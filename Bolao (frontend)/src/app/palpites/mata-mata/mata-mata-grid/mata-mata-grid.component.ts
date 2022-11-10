import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';

export type Pais = {
  nome: string,
  bandeira: string,
}

@Component({
  selector: 'app-mata-mata-grid',
  templateUrl: './mata-mata-grid.component.html',
  styleUrls: ['./mata-mata-grid.component.css']
})
export class MataMataGridComponent implements OnInit {
  data:any;
  Usuario:any;
  paises: Array<Array<any>> = [
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
  ]
  labels = [
    "Oitavas de final",
    "Quartas de final",
    "Semifinal",
    "Final",
    "Campeão",
    "Final",
    "Semifinal",
    "Quartas de final",
    "Oitavas de final",
  ]
  constructor(private http: HttpClient,
    private router: Router,
    private jwtHelper: JwtHelperService) {

    // var response:any = this.carregar();

    // for (let i = 1; i <= 16; i++) {
    //   if (i <= 8)
    //     this.paises[0].push({
    //       nome: response[`time${i}`],
    //       bandeira: `https://countryflagsapi.com/svg/${response[`time${i}Sigla`]}`
    //     })
    //   else
    //     this.paises[8].push({
    //       nome: response[`time${i}`],
    //       bandeira: `https://countryflagsapi.com/svg/${response[`time${i}Sigla`]}`
    //     })
    // }

    // this.paises[1] = [undefined, undefined, undefined, undefined]
    // this.paises[2] = [undefined, undefined]
    // this.paises[3] = [undefined]
    // this.paises[4] = [undefined]
    // this.paises[5] = [undefined]
    // this.paises[6] = [undefined, undefined]
    // this.paises[7] = [undefined, undefined, undefined, undefined]
  }

  // carregar = (): any => {
  //   var resposta:any;
  //   const token = localStorage.getItem('jwt');
  //   if (token) {
  //     const decoded = this.jwtHelper.decodeToken(token);
  //     this.Usuario =
  //       decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
  //   }

  //   this.http
  //     .post<any>('https://localhost:7288/api/Oitavas', { usuario: this.Usuario })
  //     .subscribe((data) => {resposta = data});
  //   return resposta;
  // };

  organizar = (teste:any ): any => {
    var response:any = teste;
    for (let i = 1; i <= 16; i++) {
      if (i <= 8)
        this.paises[0].push({
          nome: response[`time${i}`],
          bandeira: `https://countryflagsapi.com/svg/${response[`time${i}Sigla`]}`
        })
      else
        this.paises[8].push({
          nome: response[`time${i}`],
          bandeira: `https://countryflagsapi.com/svg/${response[`time${i}Sigla`]}`
        })
    }

    this.paises[1] = [undefined, undefined, undefined, undefined]
    this.paises[2] = [undefined, undefined]
    this.paises[3] = [undefined]
    this.paises[4] = [undefined]
    this.paises[5] = [undefined]
    this.paises[6] = [undefined, undefined]
    this.paises[7] = [undefined, undefined, undefined, undefined]
  }

  ngOnInit(): void {
    const token = localStorage.getItem('jwt');
    if (token) {
      const decoded = this.jwtHelper.decodeToken(token);
      this.Usuario =
        decoded['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'];
    }

    this.http
      .post<any>('https://localhost:7288/api/Oitavas', { usuario: this.Usuario })
      .subscribe(
        (data) => {this.data = data
        this.organizar(data)}
      );
  }

  onPaisClick(index: Array<number>, i: number = 0) {
    if (index[0] == 4) return;
    let pais = this.paises[index[0]][index[1]];
    let inc = index[0] < 4 ? 1 : -1;
    this.paises[index[0] + inc][Math.floor(index[1] / 2)] = i == 0 ? pais : undefined;
    this.onPaisClick([index[0] + inc, Math.floor(index[1] / 2)], -1);
  }

  isActive(pais: Pais, index: Array<number>) {
    try {
      let inc = index[0] < 4 ? 1 : -1;
      if (this.paises[index[0] + inc][Math.floor(index[1] / 2)] === pais) return true;
    }
    catch { }
    return false;
  }

  send() {
    let quartasPayload:any = {}
    for (let i = 0; i < [...this.paises[1], ...this.paises[7]].length; i++) {
      quartasPayload[`time${i + 1}`] = ([...this.paises[1], ...this.paises[7]][i] as Pais)?.nome
    }

    let semisPayload:any = {}
    for (let i = 0; i < [...this.paises[2], ...this.paises[6]].length; i++) {
      semisPayload[`time${i + 1}`] = ([...this.paises[2], ...this.paises[6]][i] as Pais)?.nome
    }

    let finaisPayload:any = {}
    for (let i = 0; i < [...this.paises[3], ...this.paises[5]].length; i++) {
      finaisPayload[`time${i + 1}`] = ([...this.paises[3], ...this.paises[5]][i] as Pais)?.nome
    }

    let campeaoPayload = {
      time: this.paises[4][0]?.nome
    }

    console.log(quartasPayload, semisPayload, finaisPayload, campeaoPayload);

  }

}
