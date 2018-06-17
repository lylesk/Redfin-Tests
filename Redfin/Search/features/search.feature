Feature: Searches with multiple filters can be done
Scenario: Multiple fitler search
    Given I am on the Redfin search screen
    When I add a filter for max price of "$500000"
    And I add a filter for min bedrooms of "2"
	And I select house as the property type
	Then I should see three filter options applied to my search