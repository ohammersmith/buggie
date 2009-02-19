Feature: customer support
  In order to get my problems resolved
  As a user
  I want to describe my issues and track their progress
  
  Scenario: a customer without any existing issues
    Given I am a customer
    And I don't have any existing issues
    When I go to the main page
    Then I should see a form to report a new bug
    
  Scenario: a customer with existing issues
    Given I am a customer
    When I go to the main page
    Then I should see a list of my existing issues and their status
    And I should see a for to report a new bug
    
  

  
