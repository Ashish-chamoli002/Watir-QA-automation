# features/login.feature
Feature: Login

  Scenario: User fails to log in with invalid credentials
    Given I am on the login page
    When I log in with invalid credentials
    Then I should see login error

  Scenario: User logs in with valid credentials
    Given I am on the login page
    When I log in with valid credentials
    Then I should see the dashboard


