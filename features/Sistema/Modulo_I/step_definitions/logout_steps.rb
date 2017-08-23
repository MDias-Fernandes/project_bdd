#logout

When(/^clico no botao de perfil do usuario$/) do
  @logout.drop_down_user.click
end

When(/^clico na opcao de realizar logout na aplicacao$/) do
  @logout.btn_logout.click
end

Then(/^devo ser redirecionado para a tela principal da aplicacao$/) do
  page.has_xpath?("//div[@id='block-1754138']//div/h3")
end