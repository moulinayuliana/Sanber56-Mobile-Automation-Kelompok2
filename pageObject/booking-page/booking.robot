*** Settings ***
Resource                             ../main.robot

*** Keywords ***
Verify booking page
    Wait Until Page Contains         Book        ${timeout}

Wait until start date is visible
    Wait Until Page Contains         Start Date  ${timeout}

Select start date and end date
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Click Element                    locator=//android.view.View[@content-desc="09 August 2019"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]    
    # Wait Until Page Contains         OK          ${timeout}
    # Click Text                       OK                exact_match=False
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Click Element                    locator=//android.view.View[@content-desc="10 August 2019"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]  
    # Wait Until Page Contains         OK          ${timeout}
    # Click Text                       OK                exact_match=False


    

Select flight radio button    
    Click Element                    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click booking button
    Click Text                       Book                exact_match=True

Select price to confirm the booking
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price9"]

Click confirm button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify flight is booked
    Element Should Be Visible        locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]