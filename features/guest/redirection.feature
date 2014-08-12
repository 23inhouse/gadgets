Feature: Redirection to sign in
  As a Guest
  I want to be able to try looking at gadgets
  In order to be redirected to the sign in page

Background:

  Scenario: Redirecting
    Given I am on the gadgets page
     Then I go to the sign in page
