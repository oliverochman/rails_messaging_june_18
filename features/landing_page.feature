Feature: user visits landing page
    As a user,
    When I visit landing page
    I would like to see a landing page, with login and sign up, home and login links and a welcome message

    Scenario: landing page view
        When I visit the landing page
        Then I should see "Login" link 
        And I should see "Sign up" link
        And I should see "CA Mailboxer" link
        And I should see "Craft Academy Mailboxer" message
    