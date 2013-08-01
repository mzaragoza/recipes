@javascript
Feature: User should be able to mange repairs
  In order for our clients to know how the maintance of the trucks and trilers
  they should be able to manage repairs

  Background:
    Given I am signed in as an user
    Given the following trucks:
    | name   |
    | Lyda   |
    | Sydney |
    Given I go to the users repairs page

  Scenario: User should be able add and update a repairs
    When I follow "Add Repair"
    And I select "Sydney" from "repair_truck_id"
    And I fill in "repair_service_provider_name" with "Truck Repair Co"
    And I fill in "repair_service_provider_address" with "123 Stracke Loaf"
    And I fill in "repair_service_provider_address2" with ""
    And I fill in "repair_service_provider_city" with "Kerlukeland"
    And I select "Florida" from "repair_service_provider_state"
    And I fill in "repair_service_provider_zip" with "33333"
    And I fill in "repair_service_provider_fax" with "5551112222"
    And I fill in "repair_service_provider_phone" with "5551113333"
    And I fill in "repair_delivery_date" with "2013-01-01"
    And I fill in "repair_return_date" with ""
    And I fill in "repair_invoice_date" with ""
    And I fill in "repair_invoice_number" with ""
    And I fill in "repair_details" with "Molestiae ut voluptatem voluptatum aliquam. Voluptate unde est et labore. Aut dolores magnam nemo deleniti."
    And I fill in "repair_labor" with ""
    And I fill in "repair_parts" with ""
    And I fill in "repair_tax" with ""
    And I press "Create Repair"
    Then I should see "Repair was successfully created"
    And I should see "Sydney"
    And I should see "Truck Repair Co"
    And I follow "Show"
    Then I should see "Repair - Truck Repair Co"
    And I follow "Edit"
    And I fill in "repair_return_date" with "2013-01-15"
    And I fill in "repair_invoice_date" with "2013-01-15"
    And I fill in "repair_invoice_number" with "12345"
    And I fill in "repair_labor" with "1000"
    And I fill in "repair_parts" with "500"
    And I fill in "repair_tax" with "17"
    And I press "Update Repair"
    Then I should see "Repair was successfully updated"
    Then I should see "$1,517.00"
