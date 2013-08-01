@javascript
Feature: User should be able to mange receipts
  In order for our clients to know how much the drivers are spending 
  they should be able to manage their receipts

  Background:
    Given I am signed in as an user
    Given the following drivers:
    | first_name | last_name |
    | Jhon       | Smith     |
    | William    | Comtom    |
    Given the following trucks:
    | name   |
    | Lyda   |
    | Sydney |
    Given I go to the users receipts page

  Scenario: User should be able add and update a receipt
    When I follow "Add Receipt"
    And I select "Sydney" from "receipt_truck_id"
    And I select "William" from "receipt_driver_id"
    And I fill in "receipt_receipt_date" with "2013-01-01"
    And I fill in "receipt_fill_up_gallons" with "62"
    And I select "Florida" from "receipt_state"
    And I fill in "receipt_cost" with "2836.36"
    And I fill in "receipt_odometer" with "864871"
    And I fill in "receipt_credit_card_number" with "9820354044760099"
    And I press "Create Receipt"
    Then I should see "Receipt was successfully created"
    And I should see "Sydney"
    And I should see "William Comtom"
    And I should see "62"
    And I follow "Show"
    Then I should see "Receipt - Sydney - 2013-01-01"
    And I follow "Edit"
    And I press "Update Receipt"
    Then I should see "Receipt was successfully updated"
