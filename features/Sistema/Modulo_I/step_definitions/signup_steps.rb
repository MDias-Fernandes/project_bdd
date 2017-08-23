# login: teste@teste.com
# senha: 1234567890

#signup-valido
Given(/^esteja na pagina principal da aplicacao para realizar o cadastro$/) do
  visit "https://letskodeit.teachable.com/"
  @signup.sign_up.click
end

And(/^digite credenciais validas nos campos de cadastro$/) do
  #Acões nos elementos mapeados no arquivo login_page.rb em função da instância da classe SignUp no arq hooks.rb
  #Variáveis que foram carregadas antes mesmo do teste começar (Before) eu utilizo em qualquer lugar.
  @signup.sgn_name.set(@usuario)  #variável @usuario está instanciada no arquivo hooks.rb
  @signup.sgn_email.set(@email)   #variável @email está instanciada no arquivo hooks.rb
  @signup.sgn_pwd.set(@senha)     #variável @senha está instanciada no arquivo hooks.rb
  @signup.sgn_pwd_c.set(@senha)   #variável @senha está instanciada no arquivo hooks.rb
  
  @signup.chk_confirm.set(true)
  @signup.btn_submit.click
end

Then(/^devo ter acesso a tela principal da aplicacao$/) do
  page.has_css?('a[href="/courses/enrolled"]')
end


#---------------------------------------------------------------------------------------------------------------
#signup-invalido

Given(/^digito credenciais invalidas no campo 'Full Name'$/) do
  @signup.sgn_name.set('invalido_fkwbj6465489')
end

Given(/^digito credenciais invalidas no campo 'Email Address'$/) do
  @signup.sgn_email.set('invalido_687@test.com')
end

Given(/^digito uma senha com cinco caracteres$/) do
  @signup.sgn_pwd.set('12345')
end

Given(/^digito a confirmacao da senha com quatro caracteres$/) do
  @signup.sgn_pwd_c.set('1234')
end

Given(/^não aceito os termos de uso$/) do
  @signup.chk_confirm.set(false)
end

Given(/^clico em 'Sign\-Up'$/) do
  @signup.btn_submit.click
end

Then(/^recebo uma notificacao dos erros cometidos$/) do
  page.has_xpath?("//form[@id='new_user']/div[1]")
  page.has_xpath?("//form[@id='new_user']/div[1]/ul/li[1]")
  page.has_xpath?("//form[@id='new_user']/div[1]/ul/li[2]")
  page.has_xpath?("//form[@id='new_user']/div[1]/ul/li[3]")  
  puts "Todas as mensagens de erro foram exibidas"
end