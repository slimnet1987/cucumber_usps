
Feature: Scenarios for find locations

  Scenario: User able to search USPS locations
    Given I navigate to home page
    Then I press on Find USPS locations link
    And I land on Find USPS locations page
    Then I type "94111" to zip code field
    And I press on Search button on Find locations page
    Then I should see Find locations search result

  Scenario: Selenium tips
    Given I navigate to USPS find locations page
    Then I will find element by tag and text
    And I will find element by link text

  #example how to wait element, Open link 'Find locations' and test will succeed

  Scenario: Wait for element
    Given I navigate to home page
    Then I wait for FAQs link
  @find_locations
  Scenario: Scroll page all way down
    Given I navigate to USPS find locations page
    Then I scroll page all way down
    And I resize my browser to 200 by 300























