import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { Cadastro } from './cadastro';

@Injectable({
  providedIn: 'root',
})
export class CadastroService {
  constructor(private httpClient: HttpClient) {}

  cadastrar(cadastro: Cadastro): Observable<any> {
    return this.httpClient.post(
      'https://bolao-hexa-api.azurewebsites.net/api/Cadastro',
      cadastro
    );
  }
}
