Feature: Articles

Scenario: Create a new article
  Given I am on the new article page
  When I fill in "title" with "my article"
  And I fill in "body" with "lslslslslsl"
  And I press "Create"
  Then I should see "my article"
  And I should see "lslslslslsl"
  And I should see "Article successfully created"
 
Scenario: Edit an article
  Given I have an article with title "my article name"
  When I go to edit article path for the article titled "my article name"
  Then the "title" field should contain "my article name"
  When I fill in "title" with "my article name2"
  And I press "Update"
  Then I should see "my article name2"

Scenario: Index page only shows published articles
  Given I have the following articles
   | title               | published |
   | published article   | true       |
   | unpublished article | false      |
  When I go to the articles index page
  Then I should see "published article"
  And I should not see "unpublished article"
  

Scenario: Article should validate presence of title and body
  Given I am on the new article page
  When I press "Create"
  Then I should see "Title can't be blank"
  And I should see "Body can't be blank"
  
Scenario: Add a comment to an article
  Given I have an article with title "my article name"
    When I go to the article show page for the article titled "my article name"
    And I fill in "comment[body]" with "This is my comment"
    And I press "Add Comment"
    Then I should see "This is my comment"
    And I should see "You're comment has been created"
    And the "comment" field should not contain "This is my comment"