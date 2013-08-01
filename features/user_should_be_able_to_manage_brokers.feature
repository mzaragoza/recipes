@javascript
Feature: User should be able to mange brokers
  In order for our clients to know who they are in business with 
  they should be able to manage their brokers

  Background:
    Given I am signed in as an user
    Given I go to the users brokers page

  Scenario: User should be able add and update a broker
    When I follow "Add Broker"
    And I fill in "broker_name" with "dan's trucks"
    And I fill in "broker_phone" with "5551112222"
    And I fill in "broker_address" with "Upton Plaza"
    And I fill in "broker_address2" with ""
    And I fill in "broker_city" with "Port Viola"
    And I select "Florida" from "broker_state"
    And I fill in "broker_zip" with "33333"
    And I fill in "broker_fax" with "5551113333"
    And I fill in "broker_email" with "joe@danstrucks.com"
    And I fill in "broker_website" with "danstruck.com"
    And I fill in "broker_motor_carrier_number" with "123123"
    And I fill in "broker_emergency_number" with "5551114444"
    And I fill in "broker_contact_name" with "Joe"
    And I fill in "broker_contact_extention" with "123"
    And I press "Create Broker"
    Then I should see "Broker was successfully created"
    And I should see "Dan's Trucks"
    And I follow "Dan's Trucks"
    Then I should see "Broker - Dan's Trucks"
    And I follow "Edit"
    And I fill in "broker_name" with "dan's trucks"
    And I fill in "broker_phone" with "5551112222"
    And I fill in "broker_address" with "Upton Plaza"
    And I fill in "broker_address2" with ""
    And I fill in "broker_city" with "Port Viola"
    And I select "Florida" from "broker_state"
    And I fill in "broker_zip" with "33333"
    And I fill in "broker_fax" with "5551113333"
    And I fill in "broker_email" with "joe@danstrucks.com"
    And I fill in "broker_website" with "danstruck.com"
    And I fill in "broker_motor_carrier_number" with "123123"
    And I fill in "broker_emergency_number" with "5551114444"
    And I fill in "broker_contact_name" with "pedro"
    And I fill in "broker_contact_extention" with "555"
    And I press "Update Broker"
    Then I should see "Broker was successfully updated"
    And I should see "Dan's Trucks"
