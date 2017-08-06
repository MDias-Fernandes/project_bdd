require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'capybara'
require 'faker'
require 'cpf_faker'
require 'site_prism'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

Capybara.app_host = "https://letskodeit.teachable.com/"