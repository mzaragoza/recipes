@javascript
Feature: User should be able to mange trailers
  In order for our clients to know what trailers they have 
  should be able to manage there trailers

  Background:
    Given I am signed in as an user
    Given I go to the users trailers page

  Scenario: User should be able add and update a trailer
    When I follow "Add Trailer"
    And I fill in "trailer_name" with "the white gost"
    And I fill in "trailer_length" with "40 ft"
    And I fill in "trailer_width" with "96 in "
    And I fill in "trailer_height" with "28 ft"
    And I fill in "trailer_gross_vehicle_weight_rating" with "4,536 kg"
    And I fill in "trailer_axle_capacity" with "9000-lb"
    And I fill in "trailer_wheels" with "chrome"
    And I fill in "trailer_tires" with "8"
    And I fill in "trailer_vehicle_identification_number" with "12345678900987654321"
    And I fill in "trailer_vehicle_tag" with "flv1-1123"
    And I fill in "trailer_annual_inspection" with "2013-01-01"
    And I fill in "trailer_year_build" with "1973"
    And I fill in "trailer_manufacturer" with "FRUEHAUF"
    And I press "Create Trailer"
    Then I should see "Trailer was successfully created"
    And I should see "The White Gost"
    When I follow "The White Gost"
    Then I should see "Trailer - The White Gost"
    And I follow "Edit"
    And I fill in "trailer_name" with "the red devil"
    And I fill in "trailer_length" with "40 ft"
    And I fill in "trailer_width" with "96 in "
    And I fill in "trailer_height" with "28 ft"
    And I fill in "trailer_gross_vehicle_weight_rating" with "4,536 kg"
    And I fill in "trailer_axle_capacity" with "9000-lb"
    And I fill in "trailer_wheels" with "chrome"
    And I fill in "trailer_tires" with "8"
    And I fill in "trailer_vehicle_identification_number" with "12345678900987654321"
    And I fill in "trailer_vehicle_tag" with "flv1-1123"
    And I fill in "trailer_annual_inspection" with "2013-01-01"
    And I fill in "trailer_year_build" with "1973"
    And I fill in "trailer_manufacturer" with "FRUEHAUF"
    And I press "Update Trailer"
    Then I should see "Trailer was successfully updated"
    And I should see "The Red Devil"

