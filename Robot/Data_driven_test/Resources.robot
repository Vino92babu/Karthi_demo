*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login_URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    chrome


*** Keywords ***
open my browser
    Open Browser    ${Login_URL}    ${Browser}    
    Maximize Browser Window
    Sleep    2s

Close Browsers
    Close All Browsers

Input username
    [Arguments]    ${user}
    Input Text    //input[@name="username"]    ${user}

Input Pass
    [Arguments]    ${pass}
    Input Text    //input[@name="password"]    ${pass}

Click Login button
    Click Element    //button[text()=" Login "]

Click Logout link
    Click Link    Logout

Error Message Should be visible
    [Arguments]    ${err_msg}
    Wait Until Page Contains    ${err_msg}    20s

Dashboard page should be visible
    Page Should Contain    Dashboard




