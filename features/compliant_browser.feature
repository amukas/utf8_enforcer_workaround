Feature: Default browsers does not see a utf8 param.
  For Compliant browser there shall be no utf8 parameter in a default form.

  Background:
    Given I generate a new rails application
    And I run a rails generator to generate a "User" scaffold with "name:string"
    And I run a migration

  Scenario: 
    Given I start the rails application
    And I use a compliant browser
    When I go to the new user page
    Then there is no utf8 input tag
