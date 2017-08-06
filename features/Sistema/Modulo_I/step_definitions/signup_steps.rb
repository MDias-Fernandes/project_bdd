# login: teste@teste.com
# senha: 1234567890

Given(/^i am in the initial page$/) do
  visit "https://letskodeit.teachable.com/"
end

And(/^type valid credentials in the text boxes$/) do
  #Acões nos elementos mapeados no arquivo login_page.rb em função da instância da classe SignUp no arq hooks.rb
  @signup.sign_up.click
  
  #Variáveis que foram carregadas antes mesmo do teste começar (Before) eu utilizo em qualquer lugar.
  @signup.sgn_name.set(@usuario)  #variável @usuario está instanciada no arquivo hooks.rb
  @signup.sgn_email.set(@email)   #variável @email está instanciada no arquivo hooks.rb
  @signup.sgn_pwd.set(@senha)     #variável @senha está instanciada no arquivo hooks.rb
  @signup.sgn_pwd_c.set(@senha)   #variável @senha está instanciada no arquivo hooks.rb
  
  @signup.chk_confirm.set(true)
  @signup.btn_submit.click
end

Then(/^should be have access to the main application$/) do
  page.has_css?(@signup.my_courses)
  #page.has_css?('a[href="/courses/enrolled"]')
end