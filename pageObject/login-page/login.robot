*** Settings ***
Resource                           ../main.robot
Variables                          loginpage.yaml

*** Keywords ***
Wait until username is visible
    Wait Until Element Is Visible   locator=${username_input}
Click username
    Click Element                   locator=${username_input}
Input valid username
    Input Text                      locator=${username_input}        
    ...                             text=${username_valid}

Wait until password is visible
    Wait Until Element Is Visible   locator=${password_input}
Input valid password
    Input Password                  locator=${password_input}
    ...                             text=${password_valid}

Click sign in button on login page
    Click Element                   locator=${signin_btn}

Input invalid username
    Input Text                      locator=${username_input}
    ...                             text=${username_invalid}

Input invalid password
    Input Password                  locator=${password_input}
    ...                             text=${password_invalid}

Verify failed login
    Wait Until Page Contains        Invalid username        ${timeout}
    