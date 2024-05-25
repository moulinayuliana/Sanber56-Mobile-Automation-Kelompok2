*** Settings ***
Resource                           ../main.robot

*** Keywords ***
Verify search page
    Element Should Be Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]
    
Input valid flight number
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"] 
    ...                              text=${flightnumber_valid}

Click search button on search page
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify flight information appears
    Element Should Be Visible        locator=//android.widget.TextView[@text="Toronto to Paris"]
    
Input invalid flight number
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"] 
    ...                              text=${flightnumber_invalid}
    
Verify error message appears
    Element Should Be Visible        locator=//*[contains(text(), "Please enter valid Flight Number")]
