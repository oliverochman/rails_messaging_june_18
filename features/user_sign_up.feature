Feature: User want to sign up for personal account
    As a user
    In order to keep my information private
    I would like to able to sign up for a private account

    Background:
      Given I am at the sign up page
    
    Scenario: Sign up for account
        When I fill in 'Name' with 'RandomGuy'
        And fill in 'Email' with 'random@test.com'
        And I fill in 'Password' with 'my-password'
        And I fill in 'Password confirmation' with 'my-password'
        And I click 'Create' button
        Then show me the page
        Then my account is created