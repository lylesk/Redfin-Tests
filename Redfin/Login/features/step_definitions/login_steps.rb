Given(/^I am on the Redfin login screen$/) do
	visit 'www.redfin.com'
	expect(page).to have_text('Redin')
	click('Sign-In')
	click('submitButton')
end

When(/^I submit a valid username and password$/) do
	fill_in 'emailInput', :with =>'funstuffonly77@gmail.com'
	fill_in 'passwordInput', :with=> 'Redp@ss11'
	click('submitButton')
end

Then(/^I should see the user menu$/) do
	page.has_content?(userMenu)
end

