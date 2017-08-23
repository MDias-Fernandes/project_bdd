#login

When(/^esteja na pagina principal da aplicacao para realizar login$/) do
  visit "https://letskodeit.teachable.com/"
  @login.login.click
end

When(/^preencha o campo de login com um email valido$/) do
  @login.user_name.set('teste@teste.com')
end

When(/^preencha o campo de senha com uma senha valida$/) do
  @login.password.set('1234567890')
end

When(/^clique no botao de login$/) do
  @login.login_btn.click
end

#---------------------------------------------------------------------------------------------------------------
#login_invalido

Given(/^preencha o campo de login com um email invalido$/) do
  @login.user_name.set('dados_invalidos@test.com')
end

Given(/^preencha o campo de senha com uma senha invalido$/) do
  @login.password.set('senha_invalida')
end

Then(/^não devo ter acesso a tela principal da aplicacao$/) do
  page.has_css?('.alert.alert-danger')
end