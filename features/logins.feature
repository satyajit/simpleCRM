Feature: Manage logins
  In order to provide value for
  job seekers they
  want the ability to use features of our site
 
  Background:
    Given that I am on the home page
  
  Scenario: See masthead of the site without logging in
    And I am not logged in
    And I should see "Register"
    And I should see "Login"
    And I should not see "Logout"
  
  Scenario: See the registration page
    And I follow "Register"
    And I should see "Register"
    And I should see "Firstname"
    And I should see "Lastname"
    And I should see "Email"
    And I should see "Password"
    And I should see "Password confirmation"
 
  Scenario: Create a new user account and login
    Given I am on the new user page
    When I fill in the following:
      | Firstname | Britney |
      | Lastname | Spears |
      | Email | brit@nbc.org |
      | Password | crazy |
      | Password confirmation | crazy |
    And I press "Submit"
    And I should see "Welcome to simple CRM"
    And I should see "Britney"
    And I should see "Logout"
    And I should not see "Register"
    And I should not see "Login"
