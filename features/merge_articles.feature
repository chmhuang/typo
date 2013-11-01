Feature: Merge Articles
  As an admin
  In order to organize the articles
  I want to merge similar articles

  Scenario: Can input similar article id from edit page
    Given I am on the edit page
    Then I should see "similar article id"
    And I should see "merged successfully"

  Scenario: Merged article should contain text from both articles
    Given the articles are merged
    When I am on the edit page
    Then I should see contents from both articles

  Scenario: Merged article should have one author
  	Given the articles have merged
  	When I am on the edit page
  	Then the author should be one of the two authors

  Scenario: Merged article should have comments from both articles
  	Given the articles have merged
  	When I am on the edit page
  	THen all the comments should carry over
