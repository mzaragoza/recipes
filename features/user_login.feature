@javascript
Feature: Users should be able to login
  In order to make money
  users should be able to login


Scenario: User should be able to log in
  Given I am signed in as an user
  Then I should see 'Signed in successfully.'
