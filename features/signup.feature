Feature: homepage and signup
  In order to customize a user's experience
  As a site owner
  I want users to give their name and identify their role
  
  Scenario: an unknown user arrives on the site
    Given I have never visited this site
    When I visit the home page
    Then I should see "Welcome"
    And I should see "What is your name?"
    And I should see a form field for my name
    And I should see "What kind of user are you?"
    And I should see a drop down list with "Developer", "Manager", and "Customer"
    
  Scenario: a new Developer
    Given I have never visited this site
    And I visit the home page
    When I fill in my name, "Larry"
    And I select Developer
    And I press "Submit"
    Then I should see the introduction page for developers
    
  Scenario: a new Manager
    Given I have never visited this site
    And I visit the home page
    When I fill in my name
    And I select Manager
    And I click the submit button
    Then I should see the introduction page for managers  

  Scenario: a new Customer
    Given I have never visited this site
    And I visit the home page
    When I fill in my name
    And I select Customer
    And I click the submit button
    Then I should see the introduction page for customers

  Scenario: a returning Developer arrives on the site
    Given I am a returning Developer
    When I visit the home page
    Then I should see my bug list
    
  Scenario: a returning Customer
    Given I am a returning Customer
    When I visit the home page
    Then I should see the list of bugs I have reported
    
  Scenario: a returning Manager
    Given I am a returning Manager
    When I visit the home page
    Then I should see the list of unassigned bugs
  
# there are some missing corner cases, what are they?
  
  

  
