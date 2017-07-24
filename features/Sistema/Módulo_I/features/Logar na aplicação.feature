@login

Feature: Log-in in application

Scenario: With valid credentials a user can log-in application
    Given i am in the initial page
    And type valid credentials in the text boxes
    Then should be have access to the main application