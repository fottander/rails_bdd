Feature: Create articles
  As a author,
  In order for visitors to read my articles
  I would like to be able to create articles

  Scenario: Creating an article to be displayed
    Given I am on the landing page
    And I click "Publish article"
    Then I should see "Publish you own article"
