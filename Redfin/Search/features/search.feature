Feature: Searches with multiple filters can be done
Scenario: Search for properties using three filters
    Given I am on the Redfin search screen
	When I add a filter for a specific max price
	When I select the More Filters button
	And I add a filter for a min number of bedrooms
	And I select house as the property type
	Then I should see three filter options applied to my search