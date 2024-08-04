#require 'capybara/cucumber'

require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'faker'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(Helper)
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(PageObjects)

Capybara.configure do |config|
    #selenium = firefox
    config.default_driver = :selenium
    config.app_host = 'https://seubarriga.wcaquino.me'
    config.default_max_wait_time = 5

end