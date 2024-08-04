#require 'capybara/cucumber'

require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'faker'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    #selenium = firefox
    config.default_driver = :selenium
    config.app_host = 'https://seubarriga.wcaquino.me'
    config.default_max_wait_time = 5

end

