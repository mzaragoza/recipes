@javascript
Feature: Owner should be able to manage users
  In order for our clients to manage their staff they
  should be able to manage users

  Background:
    Given I am signed in as an owner
    Given I go to the users users page

  Scenario: Owner should be able to add and update a user
    When I follow "Add User"
    And I fill in "user_first_name" with "otto"
    And I fill in "user_last_name" with "octavius"
    And I fill in "user_phone" with "5551112222"
    And I fill in "user_email" with "ooctavius@braincomputerinterface.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Create User"
    Then I should see "User was successfully created"
    Then I should see "Otto Octavius"
    When I follow "Otto Octavius"
    Then I should see "User - Otto Octavius"
    When I follow "Edit"
    And I fill in "user_first_name" with "mac"
    And I fill in "user_last_name" with "gargan"
    And I fill in "user_phone" with "5551113333"
    And I fill in "user_email" with "mac@braincomputerinterface.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Update User"
    Then I should see "User was successfully updated"
    Then I should see "Mac Gargan"

  Scenario: Owner should be able to update a user with out password
    When I follow "Add User"
    And I fill in "user_first_name" with "otto"
    And I fill in "user_last_name" with "octavius"
    And I fill in "user_phone" with "5551112222"
    And I fill in "user_email" with "ooctavius@braincomputerinterface.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Create User"
    Then I should see "User was successfully created"
    Then I should see "Otto Octavius"
    When I follow "Otto Octavius"
    Then I should see "User - Otto Octavius"
    When I follow "Edit"
    And I fill in "user_first_name" with "mac"
    And I fill in "user_last_name" with "gargan"
    And I fill in "user_phone" with "5551113333"
    And I fill in "user_email" with "mac@braincomputerinterface.com"
    And I press "Update User"
    Then I should see "User was successfully updated"
    Then I should see "Mac Gargan"

  Scenario: Owner should be not able to add a bad user
    When I follow "Add User"
    And I press "Create User"
    Then I should see "Email can't be blank"
    Then I should see "Password can't be blank"
    And I should not see "User was successfully created"

