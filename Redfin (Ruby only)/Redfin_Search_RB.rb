require 'selenium-webdriver'
require 'watir'
require 'rubygems'

puts "Loading site"
browser = Watir::Browser.new
browser.goto 'http://www.redfin.com'

puts "Enter a zip code in the search box"
browser.element(:css=>"[data-rf-test-name='search-box-input']").send_keys '97214'

puts "Select the search button"
browser.button(:css=>"[data-rf-test-name='searchButton']").click

sleep 3

browser.button(:css=>"[data-rf-test-id='filterButton']").present?
browser.button(:css=>"[data-rf-test-id='filterButton']").click
sleep 1

puts "Set max price to $500k"
browser.element(:name=>"maxPrice").click
browser.element(:name=>"maxPrice").send_keys '$500', :enter
sleep 2

puts "Select max 3 bedrooms"
browser.element(:css=>"[data-rf-test-name='maxBeds']").click
browser.element(:css=>"[data-rf-test-name='maxBeds']").send_keys '3', :enter
sleep 2

#puts "Choose the house filter"
#browser.element(:css=>"[data-rf-test-name='uipt1'], [text='House']").click
#sleep 2

#puts "Click the Show More button"
#browser.element(:class=>"showToggleHeader ", :text=>"Show More").click

puts "Enter 1200s sqft as minimum"
browser.element(:name=>"sqftMin").click
browser.element(:name=>"sqftMin").send_keys '1200', :enter

puts "Select Open Houses"
browser.element(:css=>"[data-rf-test-name='label-text'], [text='Open Houses']").click

puts "Select houses with reduced prices"
browser.element(:css=>"[data-rf-test-name='label-text'], [text='Price Reduced']").click

sleep 2

browser.element(:css=>"[data-rf-test-id='apply-search-options']").click

sleep 2




