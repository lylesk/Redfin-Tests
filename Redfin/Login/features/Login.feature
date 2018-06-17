Feature: With a valid username and password I can log into Redfin
Scenario: Valid login scenario
    Given I am on the Redfin login screen
    When I submit a valid username and password
    Then I should see the user menu