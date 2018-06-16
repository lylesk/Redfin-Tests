require 'selenium-webdriver'
require 'watir'
require 'rubygems'

puts "Loading site"
browser = Watir::Browser.new
browser.goto 'http://www.redfin.com'

puts "Select login button"
browser.element(:css=>"[data-rf-test-name='SignInLink']").click
sleep 3

puts "Select sign in with email"
browser.element(:css=>"[data-rf-test-name='submitButton']").click
sleep 3

puts "Select field and enter email address"
browser.element(:name=> "emailInput").send_keys 'funstuffonly77@gmail.com'

puts "Enter password and hit submit"
browser.element(:name=>"passwordInput").send_keys 'Redp@ss11'
sleep 1

browser.button(:class=> "button Button  primary submitButton v3").click #I had to use class instead of the test attribute because the I was having difficulty getting the button to be selected with the submitButton a second time. 

sleep 5 #allow enough time for the site to load

if 
	browser.element(:id=>"userMenu").present?
	puts "Login was succesfull with valid username and password" 
else
	puts "Login was not successful with valid username and password"
end





