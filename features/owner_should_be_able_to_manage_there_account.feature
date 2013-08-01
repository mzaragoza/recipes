@javascript
Feature: Owner should be able to manage their account
  In order for our clients to manage their account
  should be able to ...

  Background:
    Given I am signed in as an owner

  Scenario: Owner should be able to update their account info
    Given I go to the users accounts page
    When I follow "Edit"
    And I fill in "account_name" with "fake truckers"
    And I fill in "account_motor_carrier_number" with "111111"
    And I fill in "account_address" with "1600 Pennsylvania Ave"
    And I fill in "account_address2" with ""
    And I fill in "account_city" with "Washington"
    And I select "Washington" from "account_state"
    And I fill in "account_zip" with "20500"
    And I fill in "account_phone" with "2024561111"
    And I fill in "account_website" with "faketruckers.com"
    And I press "Update Account"
    Then I should see "Account was successfully updated"
    Then I should see "Fake Truckers"

