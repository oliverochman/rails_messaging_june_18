Feature: User wants to login
    As a user
    In order to access my existing account
    I would like to be able to log in

    Background: 
    Given the following user exist in the database
    |email|name|password|password_confirmation|
    |random@test.com|randomguy|my-password|my-password|


    Scenario: Log in page view
        When I visit the site
        Then I click on 'Login'
        And I should be on the "Login" page
        And I fill in "Email" with "random@test.com"
        And I fill in "Password" with "my-password"
        And I click on "Log in"
        Then I should see "Signed in successfully."