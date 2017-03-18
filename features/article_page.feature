Feature: An article has comments
  As a visitor
  In order to comment on an article
  I would like to see the article´s comment on landing page

  Background:
    Given the following article exists on our site
     | title         | content                             |
     | Mucho gracias | The hole new world of mucho gracias |

  Scenario: Create a new comment for the article
    Given I am on the landing page
    And I click "Mucho gracias"
    Then I should see "Mucho gracias" and publishing date "2016-05-24"
    And I shouldn´t see "Mucho gracias´s comments"
    When I click on "Add comment"
    Then I should see "New comment for Mucho gracias"
    When I fill in "Email" with "felix@telia.com"
    And I fill in "Comment" with "This article makes no sense"
    And I click "Submit"
    Then I should be on "Mucho gracias" article page
    And I should see "Mucho gracias´s comments"
    And I should see "This article makes no sense"
    And I should see "felix@telia.com"
    Given I am on the landing page
    Then I should see "This article makes no sense"
