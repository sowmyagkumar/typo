Feature: Create categories
  As an blog administrator
  In order to categorise
  I want to be able to add categories
  
Background:
    Given the blog is set up
    And I am logged into the admin panel
  Scenario: Successfully Create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Movies"
    And I fill in "category_keywords" with "Thriller"
    And I fill in "category_permalink" with "yes"
    And I fill in "category_description" with "desc"
    And I press "Save"
    Then I should see "Movies"
    Then I should see "Thriller"
    Then I should see "yes"
    Then I should see "desc"
    
    Then I follow "Movies"
    When I fill in "category_name" with "Director"
    And I fill in "category_keywords" with "Nolan"
    And I fill in "category_permalink" with "yes"
    And I fill in "category_description" with "desc"
    And I press "Save"
    Then I should see "Director"
    Then I should see "Nolan"
    Then I should see "yes"
    Then I should see "desc"
