@javascript
Feature: User should be able to mange trucks
  In order for our clients to know what trucks they have 
  should be able to manage there trukcs

  Background:
    Given I am signed in as an user
    Given I go to the users trucks page

  Scenario: User should be able add and update a truck
    When I follow "Add Truck"
    And I fill in "truck_name" with "yellow beuty"
    And I fill in "truck_annual_inspection_date" with "2013-01-01"
    And I fill in "truck_engine" with "Cummins ISX 400"
    And I fill in "truck_sleeper_size" with "70' Premium Hig"
    And I fill in "truck_transmission" with "9 Speed"
    And I fill in "truck_front_axel_capacity" with "12,000 lbs"
    And I fill in "truck_rear_axle_capacity" with "34,000 lbs"
    And I fill in "truck_rear_end_ratio" with "3.58"
    And I fill in "truck_wheelbase" with "236"
    And I fill in "truck_tires" with "295/75R22.5G"
    And I fill in "truck_vehicle_identification_number" with "VPJBQKAKWEASZCTZEN"
    And I fill in "truck_vehicle_tag" with "IJQYZFLN"
    And I fill in "truck_truck_year" with "2004"
    And I fill in "truck_manufacturer" with "FREIGHTLINER"
    And I fill in "truck_truck_model" with "CA12564SLP - CASCADIA"
    And I press "Create Truck"
    Then I should see "Truck was successfully created"
    And I should see "Yellow Beuty"
    When I follow "Yellow Beuty"
    Then I should see "Truck - Yellow Beuty"
    When I follow "Edit"
    And I fill in "truck_name" with "the yellow fly"
    And I fill in "truck_annual_inspection_date" with "2013-01-01"
    And I fill in "truck_engine" with "Cummins ISX 400"
    And I fill in "truck_sleeper_size" with "70' Premium Hig"
    And I fill in "truck_transmission" with "9 Speed"
    And I fill in "truck_front_axel_capacity" with "12,000 lbs"
    And I fill in "truck_rear_axle_capacity" with "34,000 lbs"
    And I fill in "truck_rear_end_ratio" with "3.58"
    And I fill in "truck_wheelbase" with "236"
    And I fill in "truck_tires" with "295/75R22.5G"
    And I fill in "truck_vehicle_identification_number" with "VPJBQKAKWEASZCTZEN"
    And I fill in "truck_vehicle_tag" with "IJQYZFLN"
    And I fill in "truck_truck_year" with "2004"
    And I fill in "truck_manufacturer" with "FREIGHTLINER"
    And I fill in "truck_truck_model" with "CA12564SLP - CASCADIA"
    And I press "Update Truck"
    Then I should see "Truck was successfully updated"
    And I should see "The Yellow Fly"
