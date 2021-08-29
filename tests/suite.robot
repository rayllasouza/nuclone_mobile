***Settings***
Documentation       Suite para testes mobile

Resource       ../resources/base.robot 
Resource       ../resources/steps.robot

Test Setup      Abrir App
Test Teardown   Fechar App

***Test Cases***
Cenario 01: Ver meu saldo
    Mostra saldo
    Meu saldo deve ser de   R$ 5.500,00 

Cenario 02: Acessar Perfil e Configuração NuConta
    Arrastar modal de saldo
    Acessar Perfil
    Voltar ao menu
    Acessar Configurar NuConta
    Voltar ao menu

Cenario 03: Fazer cobrança
    Acessar menu Cobrar
    Fazer cobrança de R$  215,70
    Voltar a pagina inicial

Cenario 04: Acessar menu Indicar amigos e menu Bloquear Cartão
    Acessar menu Indicar amigos
    Voltar a pagina inicial
    Acessar menu Bloquear Cartão


    
