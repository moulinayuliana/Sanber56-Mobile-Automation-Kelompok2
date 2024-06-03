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
# Positive - User login with valid credentials
#     # [Tags]    TC-001
#     # Open flight application
#     Verify sign in button appears
#     Click sign in button on home page
#     Wait until username is visible
#     Input valid username
#     Wait until password is visible
#     Input valid password
#     Click sign in button on login page
#     Wait until book menu is visible
#     Verify succeeded login
#     Click sign in button on home page
#     Verify sign in button appears

# ## Access link to screen recording TC-001: https://drive.google.com/file/d/1i-BGBRj4LZ2oIgO2kAiEaTBkQChGGV2_/view?usp=sharing

# Negative - User login with valid credentials
#     # [Tags]    TC-002
#     # Open flight application
#     Verify sign in button appears
#     Click sign in button on home page
#     Wait until username is visible
#     Input invalid username
#     Wait until password is visible
#     Input valid password
#     Click sign in button on login page
#     Verify failed login
#     Click sign in button on home page
#     Verify sign in button appears

Positive - User want to book flight one way
    # [Tags]    TC-003
    # Open flight application
    Verify sign in button appears
    Click sign in button on home page
    Wait until username is visible
    # Click username
    Input valid username
    Wait until password is visible
    Input valid password
    Click sign in button on login page
    Wait until book menu is visible
    Click book button on homepage
    Wait until start date is visible
    Select start date and end date
    Select flight radio button 
    Click booking button
    Select price to confirm the booking
    Click confirm button
    Verify flight is booked
