Feature: Viewing the gadgets in a carousel
  As a User
  I want to view my gadgets in a carousel
  In order to easily enjoy my fine collection of gadgets

  Background:
    Given "cool@dewd.com" is a user
      And I am signed in as "cool@dewd.com"
      And there is a "Cool new" gadget with 2 images
      And there is a "Great" gadget with 1 images
      And there is a "pretty old" gadget with 3 images

  Scenario: View the gadgets
    Given I am on the carousel page
     When I click for the next image
     Then the carousel moves to the right
