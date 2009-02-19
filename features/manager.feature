Feature: manager support
  In order to keep my team working
  As a manager
  I want assign and prioritize bugs

  Scenario: see unassigned bugs
    Given I am a manager
    When I go to the main page
    Then I should see a list of the unassigned bugs
    And I should see a drop down list of developers names next to each bug
    And I should see a list of all the incomplete bugs
  
  Scenario: assign a bug
    Given I am a manager
    And I have a team of developers, "Larry", "Curly" and "Moe"
    When I go to the main page
    And I select "Larry" from the first bug's drop down list
    And I click "submit"
    Then the bug should be assigned to Larry
    And the bug should be removed from my list
    
  Scenario: no unassigned bugs
    Given I am a manager
    And There are no unassigned bugs
    When I go to the main page
    Then I should see a list of all the incomplete bugs
    And I should see the name of the developer assigned the bug next to it
    And I should be able to drag the bugs into the proper priority order
