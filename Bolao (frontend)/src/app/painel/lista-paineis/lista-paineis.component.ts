import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';
import { HeaderComponent } from 'src/app/header/header.component';

@Component({
  selector: 'app-lista-paineis',
  templateUrl: './lista-paineis.component.html',
  styleUrls: ['./lista-paineis.component.css'],
  providers:[HeaderComponent]
})
export class ListaPaineisComponent implements OnInit {

  constructor(private jwtHelper: JwtHelperService, private router: Router) { }
  
  navegarGrupoA = () => {
      this.router.navigate(['grupoA']);
    }
  
  isUserAuthenticated = (): boolean => {
    const token = localStorage.getItem("jwt");
    if (token && !this.jwtHelper.isTokenExpired(token)){
      return true;
    }
    return false;
  }



  ngOnInit(): void {
  }

}
