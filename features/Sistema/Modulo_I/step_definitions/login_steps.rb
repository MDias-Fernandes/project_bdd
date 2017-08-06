When(/^esteja na pagina principal da aplicacao$/) do
  visit "https://letskodeit.teachable.com/"
  @@login = LoginPage.new
  @@login.login.click
end

When(/^preencha o campo de login com um email valido$/) do
  @@login = LoginPage.new
  @@login.user_name.set('teste@teste.com')
end

When(/^preencha o campo de senha com uma senha valida$/) do
  @@login = LoginPage.new
  @@login.password.set('1234567890')
end

When(/^clique no botao de login$/) do
  @@login = LoginPage.new
  @@login.login_btn.click
end

#Then(/^should be have access to the main application$/) do
#  page.has_css?("a[href='/courses/enrolled']")
#end