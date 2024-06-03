*** Settings ***
Resource                             ../main.robot

*** Keywords ***
Verify booking page
    Wait Until Page Contains         Book        ${timeout}

Wait until start date is visible
    Wait Until Page Contains         Start Date  ${timeout}

Select From City
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]
    Wait Until Page Contains         OK          ${timeout}
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]

Select To City
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]
    Wait Until Page Contains         OK          ${timeout}
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]

Select Class
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]
    Wait Until Page Contains         OK          ${timeout}
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]

Select start date and end date
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Wait Until Page Contains         OK          ${timeout}
    # Click Text                       OK                exact_match=False
    Click Element                    locator=//android.view.View[@content-desc="09 August 2019"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]    
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Wait Until Page Contains         OK          ${timeout}
    # Click Text                       OK                exact_match=False
    Click Element                    locator=//android.view.View[@content-desc="10 August 2019"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]  


    

Select flight radio button    
    Click Element                    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click booking button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Select price to confirm the booking
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price9"]

Click confirm button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify flight is booked
    Wait Until Element Is Visible    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]
    Element Should Be Visible        locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]