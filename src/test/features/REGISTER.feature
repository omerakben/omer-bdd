@test
@dev
Feature: Register test suite

  Background: Preconditions
    Given Open http://automationpractice.com/ page
    And User click: in SignIn

  Scenario: TC.08 - Valid register new user
        Try Valid register new user
        When User write: new123Try123@mail.com to create new account
        And User click: Create an account
        And User write: Omer to firstname input
        And User write: Akben to lastname input
        And User write: pass123!@ to passwd input
        And User set: 22 in day of birth
        And User set: 11 in month of birth
        And User set: 1990 in year of birth
        And User write: Omer to firstname address input
        And User write: Akben to lastname address input
        And User write: SpaceX to company input
        And User write: 123 Main st to address1 input
        And User write: DownTown to address2 input
        And User write: Lewes to city input
        And User set: Texas state
        And User write: 01110 to postcode input
        And User write: Hello World! to additional info input
        And User write: 864943 to home phone input
        And User write: 500500500 to mobile phone input
        And User write: IDK to alias input
        And User click: submit register button
        Then Check if you are logged in

  Scenario: TC.09 - Register new user with short password
        Try Valid register new user with short password
        When User write: new456user456@mail.com to create new account
        And User click: Create an account
        And User write: Omonjon to firstname input
        And User write: Yokubov to lastname input
        And User write: 1234 to passwd input
        And User set: 22 in day of birth
        And User set: 11 in month of birth
        And User set: 1995 in year of birth
        And User write: Omonjon to firstname address input
        And User write: Yokubov to lastname address input
        And User write: SpaceX to company input
        And User write: 123 Main st to address1 input
        And User write: DownTown to address2 input
        And User write: Pittsburgh to city input
        And User set: Pennsylvania state
        And User write: 01110 to postcode input
        And User write: Hello World! to additional info input
        And User write: 864943 to home phone input
        And User write: 500500500 to mobile phone input
        And User write: IDK to alias input
        And User click: submit register button
        Then Check error box contain passwd is invalid

  Scenario: TC.10 - Register new user wihout password
        Try Valid register new user wihout password
        When User write: new_user432@mail.com to create new account
        And User click: Create an account
        And User write: Omer to firstname input
        And User write: Akben to lastname input
        And User set: 22 in day of birth
        And User set: 11 in month of birth
        And User set: 1990 in year of birth
        And User write: Omer to firstname address input
        And User write: Akben to lastname address input
        And User write: SpaceX to company input
        And User write: 123 Main st to address1 input
        And User write: DownTown to address2 input
        And User write: Lewes to city input
        And User set: Texas state
        And User write: 01110 to postcode input
        And User write: Hello World! to additional info input
        And User write: 864943 to home phone input
        And User write: 500500500 to mobile phone input
        And User write: IDK to alias input
        And User click: submit register button
        Then Check error box contain passwd is required

  Scenario: TC.11 - Register new user with incorrect email
        Try Register new user with incorrect email
        When User write: bad_email to create new account
        And User click: Create an account
        Then Check mini error box contain Invalid email address

  Scenario: TC.12 - Register new user with exist email
        Try Register new user with incorrect email
        When User write: oliverakben@gmail.com to create new account
        And User click: Create an account
        Then Check mini error box contain An account using this email address has already been registered. Please enter a valid password or request a new one
