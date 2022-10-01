import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { UsuarioService } from '../autenticacao/usuario/usuario.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent {

  user$ = this.usuarioService.retornaUsuario()

  constructor(private usuarioService: UsuarioService, private router: Router) { }

  logout(){
    this.usuarioService.logout();
    this.router.navigate(['']);
  }

}
