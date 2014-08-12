Feature: Adding a gadget
  As a User
  I want to add a gadget
  In order to view my gadget

  Background:
    Given "cool@dewd.com" is a user
      And I am signed in as "cool@dewd.com"

  Scenario: Adding a gadget
    Given I am on the add gadget page
     When I add a gadget
     Then I go to the gadget page
