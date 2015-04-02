Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Player enters the website
    Given I am on the homepage
    When I follow "New Game" link
    Then I should be on the registration page

  Scenario: Player is on the registration page
    Given I am on the registration page
    When I fill in everything needed to start a game
    And I click the "Start Game" button
    Then I am taken to the game page
