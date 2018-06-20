Given (/^I am on the Redfin search screen$/) do
	visit ('https://www.redfin.com/zipcode/97214')
	
end

When (/^I add a filter for a specific max price$/) do #this does not work if the More Filters button is selected before choosing a price
	select '$900k', from: 'quickMaxPrice'	
end

When (/^I select the More Filters button$/) do 
	page.find_button ('Filters')
	click_button ('Filters')
end
And (/^I add a filter for a min number of bedrooms$/) do 
	#select int, from: 'minBeds'
	select '2', from: 'minBeds'
end

And (/^I select house as the property type$/) do
	find('button[data-rf-test-name="uipt1"]').click
	find('button[data-rf-test-id="apply-search-options"]').click
end
Then (/^I should see three filter options applied to my search$/) do
	page.has_content?('$0-$900k, 2+ beds, house')
end
	
	
