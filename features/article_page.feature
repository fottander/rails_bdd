Feature: An article has comments
  As a visitor,
  when I visit the specific articles page,
  I would like to see comments for the article.

  Background:
    Given the following article exists on our site
     | title         | content                             |
     | Mucho gracias | The hole new world of mucho gracias |

  Scenario: Create a new comment for the article
    Given I visit the 'Mucho gracias' article page
