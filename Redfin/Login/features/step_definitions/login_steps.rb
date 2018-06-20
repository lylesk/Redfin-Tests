Given(/^I am on the Redfin login screen$/) do
	visit ('http://www.redfin.com')
	expect(page).to have_text('Redfin')
	click_button('Log In')
end
Given(/^I choose to login via email$/) do
	click_button('Continue with Email')
end

When(/^I submit a valid username and password$/) do
	fill_in 'emailInput', :with =>#add valid email address
	fill_in 'passwordInput', :with=> #add valid password
	click_button('Sign In')
end

Then(/^I should see the user menu$/) do
	page.find_by_id('userMenu')
end

