# encoding: utf-8
#!/usr/bin/env ruby

Before do
    page.driver.browser.manage.window.maximize
    @signup = SignUp.new #Instancia da classe que contém os elementos da tela mapeados para acessá-los
    
    #Instancia de variáveis com valores randômicos
    @senha = Faker::Base.numerify('inicial####')
    @email = Faker::Internet.email
    @usuario = Faker::StarWars.planet
end

After do
    Capybara.reset_sessions!
end