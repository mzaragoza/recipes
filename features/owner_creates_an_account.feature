@javascript
Feature: Owner creates an account
  In order for us to have clients 
  they should be able to create an account

  Background:
    Given the following plans:
    | name | slug | monthy_price | yearly_price | featured | active | licenses |
    | Free | free | 20           | 200          | true     | true   | 1        |

  Scenario: Owner should be able to create an account
    Given I go to the home page
    When I follow "Try For Free"
    Then I should see "Pricing Table"
    When I follow "Free"
    And I fill in "user_email" with "test@test.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I fill in "user_account_attributes_name" with "Fake Truckers"
    And I fill in "user_account_attributes_address" with "123 my house St"
    And I fill in "user_account_attributes_address2" with ""
    And I fill in "user_account_attributes_city" with "Bay City"
    And I select "Florida" from "user_account_attributes_state"
    And I fill in "user_account_attributes_zip" with "90210"
    And I fill in "user_account_attributes_phone" with "5554151111"
    And I fill in "user_account_attributes_website" with "faketrucker.cim"
    And I press "Create Account"
    Then I should see "Welcome! You have signed up successfully."
