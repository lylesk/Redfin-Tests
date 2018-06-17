Given(/I am on the Redfin search screen$/) do
	visit ('http://www.redfin.com')
	click ('search-box-input')
	fill_in 'search-box-input', :with=> '97214'
	click ('searchButton')
	page.should have_content('97214')
end
When(/^I add a filter for max price of "500,000"$/) do
	find_button ('filterButton')
	click_button ('filterButton')
	find_select ('maxPrice')
	fill_in 'maxPrice', :with=> '$500,000'
	
end
When(/^I add a filter for min bedrooms of "2"$/) do
	find_select ('minBeds')
	select('2', :from => 'minBeds')
end
When(/^I select house as the property type$/) do
	find_button ('data-rf-test-name="uipt1"')
	click_button ('data-rf-test-name="uipt1"')
	click_button ('apply-search-options')
end
Then(/^I should see three filter options applied to my search$/) do
	page.find('wideSidepaneFilterButtonContainer', '$0-$500k, 2+ beds, house')

	
	