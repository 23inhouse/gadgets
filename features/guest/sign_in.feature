Feature: Sign In
  As a Guest
  I want to sign in
  In order to upload my electronic gadgets

  Background:
    Given "cool@dewd.com" is a user

  Scenario: Signing in
    Given I am on the sign in page
     When I sign in as "cool@dewd.com"
     Then I go to the gadgets page
