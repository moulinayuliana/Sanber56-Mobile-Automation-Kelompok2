*** Settings ***
Resource                           ../main.robot
Variables                          homepage.yaml

*** Keywords ***
Verify sign in button appears
    Wait Until Element Is Visible   locator=${signin_button}

Click sign in button on home page
    Click Element                   locator=${signin_button}

Verify succeeded login
    Wait Until Element Is Visible   locator=${ngendigital}

Wait until book menu is visible
    Wait Until Page Contains        Book        ${timeout}
Click book button on homepage
    Click Element                   locator=${book_homepage_btn}

Click search button on home page
    Click Element                   locator=${search_homepage_btn}
