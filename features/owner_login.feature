@javascript
Feature: Owners should be able to login
  In order to make money
  Owners should be able to login


Scenario: Owner should be able to log in
  Given I am signed in as an owner
  Then I should see 'Signed in successfully.'
