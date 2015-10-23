@find_locations
Feature : Scenarios for find locations

  Scenario: User able to search USPS locations
    Given I navigate to home page
    Then I press on Find USPS locations link
    And I land on Find USPS locations page
    Then I type "94111" to zip code field
    And I press on Search button on Find locations page
    Then I should see Find locations search result

