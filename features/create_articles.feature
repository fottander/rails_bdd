Feature: Create articles
  As a author,
  In order for visitors to read my articles
  I would like to be able to create articles

  Scenario: Creating an article to be displayed
    Given I am on the landing page
    And I click "Publish article"
    Then I should see "Publish your own article"
    When I fill in "Title" with "Fillingar"
    And I fill in "Content" with "This is the wonderful world of Fillingar"
    And I fill in "Author" with "Felix"
    And I click "Submit"
