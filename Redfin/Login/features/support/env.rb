require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
 
Capybara.default_driver = :selenium
Capybara.default_selector = :css