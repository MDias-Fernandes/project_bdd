@access

Feature: Acessos na aplicacao

@login
Scenario: Login valido na aplicacao
    Given esteja na pagina principal da aplicacao para realizar login
    And preencha o campo de login com um email valido
    And preencha o campo de senha com uma senha valida
    And clique no botao de login
    Then devo ter acesso a tela principal da aplicacao

@logout
Scenario: Logout na aplicacao
    Given esteja na pagina principal da aplicacao para realizar login
    And preencha o campo de login com um email valido
    And preencha o campo de senha com uma senha valida
    And clique no botao de login
    And devo ter acesso a tela principal da aplicacao
    And clico no botao de perfil do usuario
    And clico na opcao de realizar logout na aplicacao
    Then devo ser redirecionado para a tela principal da aplicacao

@login_invalido
Scenario: Login invalido na aplicacao
    Given esteja na pagina principal da aplicacao para realizar login
    And preencha o campo de login com um email invalido
    And preencha o campo de senha com uma senha invalido
    And clique no botao de login
    Then não devo ter acesso a tela principal da aplicacao