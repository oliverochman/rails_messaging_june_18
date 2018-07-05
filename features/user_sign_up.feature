Feature: User want to sign up for personal account
    As a user
    In order to keep my information private
    I would like to able to sign up for a private account

    Background:
        Given the following user exists
        | email           | name      | password       | password_confirmation|
        | random@test.com | randomguy | my-password    | my-password          |
    
    Scenario: Sign up for account
        Given I visit the sign up page
        When I fill in 'Name' with 'Pablo'
        And I fill in 'Email' with 'anotherrandomrandom@test.com'
        And I fill in 'Password' with 'my-password'
        And I fill in 'Password confirmation' with 'my-password'
        And I click 'Create' button
        And show me the page
        Then I should see "Welcome! You have signed up successfully."