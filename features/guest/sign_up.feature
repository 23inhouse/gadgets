Feature: Sign up
  As a Guest
  I want to enjoy an easy sign up process
  In order to upload my electronic gadgets

Background:

  Scenario: Signing up
    Given I am on the sign up page
     When I sign up as "cool@dewd.com"
     Then I go to the gadgets page
     Then I am messaged "Your account has been created please add some gadgets."
