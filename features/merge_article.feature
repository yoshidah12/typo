Feature: Merge Articles
  As a blog administrator
  In order to not repeat articles
  I want to be able to merge similar articles in my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
    | title    | body  | user_id |
    | article1 | body1 | 1       |
    | article2 | body2 | 1       |

  Scenario: Merge articles
    Given I am on the article "article1" page
    When I fill in "merge_with" with "article2" id
    And I press "Merge"
    Then I should be on the article "article1" page
    And I should see "Articles merged"
    When I go to the home page
    Then I should see "article1"
    And I should not see "article2"
    When I follow "article1"
    Then I should see "body1.*body2"

    
