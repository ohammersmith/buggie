Feature: developer support
  In order to know what I should be working on
  As a developer
  I want an ordered list of bugs I should work on
  
  Scenario: my current list of bugs
    Given I am a developer
    And I have some assigned bugs
    When I go to the home page
    Then I should see a list of my assigned bugs in priority order
    And I should see a button next to each bug labeled "Fixed!"
  
  Scenario: no assigned bugs, but unassigned bugs
    Given I am a developer
    And I have no assigned bugs
    And There are unassigned bugs
    When I go to the home page
    Then I should see a list of the unassigned bugs in priority order
    And I should see a button next to each bug labeled "Pick up!"
  
  Scenario: no assigned bugs, and no unassigned bugs
    Given I am a developer
    When I go to the home page
    Then I should see "Nothing to do, go get lunch or something."

  Scenario: completing a bug
    Given I am a developer
    When I go to the home page
    And I press "Fixed!"
    Then The bug should be marked as fixed
    And the bug removed from my list
  