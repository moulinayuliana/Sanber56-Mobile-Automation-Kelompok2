*** Settings ***
Library                            AppiumLibrary

*** Variables ***
${remoteUrl}                         http://127.0.0.1:4723/wd/hub
${platformName}                      Android
${platformVersion}                   12.0
${deviceName}                        emulator-5554
${appPackage}                        com.example.myapplication
${appActivity}                       com.example.myapplication.MainActivity
${username_valid}                    support@ngendigital.com
${password_valid}                    abc123
${username_invalid}                  ss12
${password_invalid}                  aaa111
${flightnumber_valid}                DA935
${flightnumber_invalid}              DA911
${timeout}                           30s


*** Keywords ***
Open flight application
    Open Application                ${remoteUrl}    
    ...                             platformName=${platformName}
    ...                             platformVersion=${platformVersion}
    ...                             deviceName=${deviceName}
    ...                             appActivity=${appActivity}
    ...                             appPackage=${appPackage}

Close flight application
    Close Application   