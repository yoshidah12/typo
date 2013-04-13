Feature: User Merging Articles
  As a blog user
  In order to not mess things up
  I want to not be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel as a user
    And the following articles exist:
    | title    | body  | user_id |
    | article1 | body1 | 2       |

  Scenario: A non-admin cannot merge two articles
    Given I am on the article "article1" page
    Then I should not see "Merge Articles"
    
