*** Settings ***
Library                              AppiumLibrary
Resource                             ../pageObject/main.robot
Resource                             ../pageObject/home-page/homepage.robot
Resource                             ../pageObject/login-page/login.robot
Resource                             ../pageObject/booking-page/booking.robot
Resource                             ../pageObject/search-page/search.robot

Suite Setup                          Open flight application
Suite Teardown                       Close Application


*** Test Cases ***
Positive - User login with valid credentials
    [Tags]    TC-001
    # Open flight application
    Verify sign in button appears
    Click sign in button on home page
    Wait until username is visible
    Click username
    Input valid username
    Wait until password is visible
    Input valid password
    Click sign in button on login page
    Verify succeeded login

