Feature: User wants to login
    As a user
    In order to access my existing account
    I would like to see a login button that takes me to a login page,
    with a login form and I would like to be able to fill in the login form and click login

    Background: 
    Given the following user exist in the database
    |email|name|password|password_confirmation|
    |random@test.com|randomguy|my-password|my-password|


    Scenario: Log in page view
        When I visit the site
        Then I click on 'Login'
        Then I'm sent to the "Login" page
        And I fill in "Email" with "random@test.com"
        And I fill in "Password" with "my-password"
        And I click on "Log in"
        Then I should see "Signed in successfully."