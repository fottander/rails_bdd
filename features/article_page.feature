Feature: An article has comments
  As a visitor,
  when I visit the specific articles page,
  I would like to see comments for the article.

  Background:
    Given the following article exists on our site
     | title         | content                             |
     | Mucho gracias | The hole new world of mucho gracias |

  Scenario: Create a new comment for the article
    Given I visit the "Mucho gracias" article page
    Then I should see "Mucho gracias" and publishing date "2016-05-24"
    And I shouldn´t see "Mucho gracias´s comments"
    When I click on "Add comment"
    Then I should see "New comment for Mucho gracias"
    When I fill in "Email" with "felix@telia.com"
    And I fill in "Comment" with "This article makes no sense"
    And I click "Submit"
    Then I should be on "Mucho gracias" article page
    And I should see "Mucho gracias´s comments"
