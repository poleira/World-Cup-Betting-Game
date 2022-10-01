import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Cadastro } from './cadastro/cadastro';
import { CadastroRequest } from './cadastro/cadastro-request';
import { CadastroService } from './cadastro/cadastro.service';
import { ConfirmedValidator } from './passwordValidator';

@Component({
  selector: 'app-novo-usuario',
  templateUrl: './novo-usuario.component.html',
  styleUrls: ['./novo-usuario.component.css']
})
export class NovoUsuarioComponent implements OnInit {

  
  

  novoUsuarioForm!: FormGroup;
  



  constructor(private formBuilder:FormBuilder, private cadastroService: CadastroService) { }

  ngOnInit(): void {
    this.novoUsuarioForm = this.formBuilder.group(
    {
      Nome: ['', [Validators.required, Validators.maxLength(30)]],
      Senha: ['', [Validators.required, Validators.maxLength(18)]],
      Email:['', [Validators.required, Validators.maxLength(35)]],
      Usuario:['', [Validators.required, Validators.maxLength(15)]],
      SenhaRepet: ['', [Validators.required]]}, 
      { 
        validator: ConfirmedValidator('Senha', 'SenhaRepet')
      }
    )
  }

  

  // cadastrar(): void {
    
  //   const novoUsuarioFiltro = this.novoUsuarioForm.getRawValue() as CadastroRequest;
    
  //     var usuario:Cadastro = { Usuario: novoUsuarioFiltro.Usuario, Nome: novoUsuarioFiltro.Nome, Email: novoUsuarioFiltro.Email, Senha: novoUsuarioFiltro.Senha} 
    
  //   console.log(usuario);

  // }

  cadastrar(): void {
    const novoUsuarioFiltro = this.novoUsuarioForm.getRawValue() as CadastroRequest;
    
      var usuario:Cadastro = { Usuario: novoUsuarioFiltro.Usuario, Nome: novoUsuarioFiltro.Nome, Email: novoUsuarioFiltro.Email, Senha: novoUsuarioFiltro.Senha} 
    
      this.cadastroService.cadastrar(usuario).subscribe(
      () => {
        console.log('progresso')
      },
      (error) => {
        alert('erro');
        console.log(error);
      }
    );
  }
}
