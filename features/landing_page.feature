Feature: Landing page
  As a visitor
  In order to know what the app is about
  I want to see an informative page

  Scenario: Visiting the home page
    Given I am not signed in
    When I visit the home page
    Then I see a landing page
