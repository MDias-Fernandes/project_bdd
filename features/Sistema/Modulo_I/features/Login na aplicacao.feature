@login

Feature: Login na aplicacao

Scenario: Com dados validos um usuario consegue realizar login na aplicacao
    When esteja na pagina principal da aplicacao
    And preencha o campo de login com um email valido
    And preencha o campo de senha com uma senha valida
    And clique no botao de login
    Then should be have access to the main application   