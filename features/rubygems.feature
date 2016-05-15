Feature: Recommendations for Ruby gems
  As a Ruby developer
  In order to be able to make bundle updates safer
  And still be able to get the most out of my well-behaved dependencies
  I want to get a reasonable version constraint recommendation

  Scenario: Getting recommendations for a Ruby gem
    Given I am not signed in
    When I visit the home page
    And I ask for a Ruby gem
    Then I see a rubygem page
    And I see a version constraint recommendation
    And I see an assesment of the gem versionning scheme
    And I see a summary of the risks associated with the recommended verion constraint
    And I see a summary of the benefits of the recommended verion constraint
