Feature: user visits landing page
    As a user,
    When I visit landing page
    I would like to see a landing page, with login and sign up, home and login buttons and a welcome message

    Scenario: landing page view
        When I visit the landing page
        Then I should see login button
        And I should see sign up button
        And I should see home button
        And I should see welcome message
    