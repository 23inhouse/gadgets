Feature: Adding a gadget
  As a User
  I want to edit a gadget
  In order to change the details

  Background:
    Given "cool@dewd.com" is a user
      And I am signed in as "cool@dewd.com"
      And there is a "Cool new" gadget

  Scenario: Editing a gadget
    Given I am on the edit gadget page
     When I change the gadget's name to "iPhone 4S"
     Then I go to the gadget page
      And there is a gadget called "iPhone 4S"
