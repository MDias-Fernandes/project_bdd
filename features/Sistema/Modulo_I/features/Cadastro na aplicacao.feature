@signup
#after -> logout

Feature: Cadastrar-se na aplicacao

@signup-valid
Scenario: Com credenciais validas um usuario consegue cadastrar-se na aplicacao
    Given esteja na pagina principal da aplicacao para realizar o cadastro
    And digite credenciais validas nos campos de cadastro
    Then devo ter acesso a tela principal da aplicacao

@signup-invalid
Scenario: Com credenciais invalidas um usuario não consegue cadastrar-se na aplicacao
    Given esteja na pagina principal da aplicacao para realizar o cadastro
    And digito credenciais invalidas no campo 'Full Name'
    And digito credenciais invalidas no campo 'Email Address'
    And digito uma senha com cinco caracteres 
    And digito a confirmacao da senha com quatro caracteres
    And não aceito os termos de uso
    And clico em 'Sign-Up'
    Then recebo uma notificacao dos erros cometidos