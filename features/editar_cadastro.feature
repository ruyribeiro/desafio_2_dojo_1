#language: pt
#utf-8

Funcionalidade: Fazer uma alteração em um cadastro
    Eu como usuario do site ORANGEHRM
    Quero entrar no site demoga
    Para editar o cadastro de um usuario

    Cenario: editar cadastro de um usuario
        Dado que esteja logado no site ORANGEHRM
        Quando editar o cadastro de um usuario
        Então validar que a alteração foi executada