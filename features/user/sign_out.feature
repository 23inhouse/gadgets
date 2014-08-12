Feature: Sign Out
  As a User
  I want to sign out
  In order to get back to using my electronic gadgets

  Background:
    Given "cool@dewd.com" is a user
      And I am signed in as "cool@dewd.com"

  Scenario: Signing out
    Given I am on the gadgets page
     When I sign out
     Then I go to the sign in page
