Given (/^I am on the Redfin search screen$/) do
	visit ('http://www.redfin.com')
	click ('search-box-input')
end
Given (/^I add "([^"]*)" as the zip code$/) do |zipCode|
	fill_in 'search-box-input', :with=> zipCode
	click ('searchButton')
	page.should have_content('97214')
end
When (/^I add a filter for a max price of "([^"]*)"$/) do |price|
	find_button ('filterButton')
	click_button ('filterButton')
	find_select ('maxPrice')
	fill_in 'maxPrice', :with=> price
	
end
And (/^I add a filter for min bedrooms of "([^"]*)"$/) do |num|
	find_select ('minBeds')
	fill_in 'minBeds', :with=> num
end
And (/^I select house as the property type$/) do
	find_button ('data-rf-test-name="uipt1"')
	click_button ('data-rf-test-name="uipt1"')
	click_button ('apply-search-options')
end
Then (/^I should see three filter options applied to my search$/) do
	page.find('wideSidepaneFilterButtonContainer', '$0-$500k, 2+ beds, house')
end
	
	