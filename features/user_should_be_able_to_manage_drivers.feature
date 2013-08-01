@javascript
Feature: User should be able to mange drivers
  In order for our clients to know who is driveing there trucks
  they should be able to manage there drivers

  Background:
    Given I am signed in as an user
    Given I go to the users drivers page

  Scenario: User should be able add and update a driver
    When I follow "Add Driver"
    And I fill in "driver_first_name" with "jose"
    And I fill in "driver_last_name" with "galan"
    And I fill in "driver_address" with "Shanny Green"
    And I fill in "driver_address2" with "Apt. 696"
    And I fill in "driver_city" with "North Douglasfurt"
    And I select "Florida" from "driver_state"
    And I fill in "driver_zip" with "33066"
    And I fill in "driver_cell" with "5551112222"
    And I fill in "driver_email" with "jose@aol.com"
    And I fill in "driver_ssn" with "123456789"
    And I fill in "driver_drivers_license" with "763584684"
    And I fill in "driver_pay_rate" with "40 per mile"
    And I fill in "driver_hire_date" with "2013-01-01"
    And I fill in "driver_bank_name" with "Bank Of America"
    And I fill in "driver_bank_account_number" with "183009773"
    And I fill in "driver_bank_rauting_number" with "170225862"
    And I press "Create Driver"
    Then I should see "Driver was successfully created"
    And I should see "Jose Galan"
    And I should see "555-111-2222"
    When I follow "Jose Galan"
    Then I should see "Driver - Jose Galan"
    And I follow "Edit"
    And I fill in "driver_first_name" with "jose"
    And I fill in "driver_last_name" with "galan"
    And I fill in "driver_address" with "Shanny Green"
    And I fill in "driver_address2" with "Apt. 696"
    And I fill in "driver_city" with "North Douglasfurt"
    And I select "Florida" from "driver_state"
    And I fill in "driver_zip" with "33066"
    And I fill in "driver_cell" with "5551113333"
    And I fill in "driver_email" with "jose@aol.com"
    And I fill in "driver_ssn" with "123456789"
    And I fill in "driver_drivers_license" with "763584684"
    And I fill in "driver_pay_rate" with "40 per mile"
    And I fill in "driver_hire_date" with "2013-01-01"
    And I fill in "driver_bank_name" with "Bank Of America"
    And I fill in "driver_bank_account_number" with "183009773"
    And I fill in "driver_bank_rauting_number" with "170225862"
    And I press "Update Driver"
    Then I should see "Driver was successfully updated"
    And I should see "Jose Galan"
    And I should see "555-111-3333"

