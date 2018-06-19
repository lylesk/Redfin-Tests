Feature: Searches with multiple filters can be done
Scenario: Search for properties using three filters
    Given I am on the Redfin search screen
	Given I add "97214" as the zip code
    When I add a filter for max price of "$500000"
    And I add a filter for min bedrooms of 2
	And I select house as the property type
	Then I should see three filter options applied to my search