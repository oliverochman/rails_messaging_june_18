Feature: user visits landing page
    As a user,
    When I visit landing page
    I would like to see a landing page, with login and sign up, home and login links and a welcome message

    Scenario: landing page view
        When I visit the landing page
        Then I should see "Login" link
        And I should see sign up link
        And I should see home link
        And I should see welcome message
    