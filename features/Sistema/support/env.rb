require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'capybara'
require 'faker'
require 'cpf_faker'
require 'site_prism'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome,
  desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {
       'args' => ['--start-maximized']
      #'args' => ['headless'] --> possibilidade de trabalhar com headless sem a necessidade do poltergeist
    }
    )
  )
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 120

Capybara.app_host = "https://letskodeit.teachable.com/"