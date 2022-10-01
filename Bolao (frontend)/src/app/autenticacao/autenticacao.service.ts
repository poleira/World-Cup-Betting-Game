import { Injectable } from '@angular/core';
import { HttpClient, HttpResponse } from '@angular/common/http';
import { Observable, tap } from 'rxjs';
import { UsuarioService } from './usuario/usuario.service';

@Injectable({
  providedIn: 'root'
})
export class AutenticacaoService {

  constructor(private httpClient: HttpClient, private usuarioService:UsuarioService) { }

  autenticar(usuario: string, senha: string) : Observable<HttpResponse<any>>{
    return this.httpClient.post(
      'https://localhost:7288/api/Login',
      {
        usuario: usuario,
        senha: senha
      },
      { observe:'response' }
    ).pipe(
      tap((res)=>{
        const authToken = (<any>res).token;
        this.usuarioService.salvaToken(authToken);
      })
    )

  }
}
