Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    And I follow "New Game"
    And I should see "What's your name?"
    When I fill in first name with "Paul"
    And I fill in surname with "Wallis"
    Then I should see "Hello Paul Wallis"
