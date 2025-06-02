*** Settings ***
Library    SeleniumLibrary
Resource    ../Robot/resources.robot
# Test Setup    Tc1
# Test Teardown    Browser_close
Suite Setup    Browser_open
Suite Teardown    Browser_close
# Test Template

*** Test Cases ***
demo    
    Tc2
    Checkbox
    Radio_button
    

































# Tc1
#     [Tags]    Sanity
#     Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     Input Text    //input[@name="username"]    Admin
#     Input Password    //input[@name="password"]    admin123
#     Click Button    //button[@type="submit"]

# Tc2
#     [Tags]    Smoke
#     # Browser_open
#     Select From List By Index    //select[@id="dropdown-class-example"]    2
#     Sleep    2s
#     Select From List By Label    //select[@id="dropdown-class-example"]    Option3
#     Sleep    2s
#     Select From List By Value    //select[@id="dropdown-class-example"]    option1
# Checkbox
#     [Tags]    Sanity
#     # Browser_open
#     Select Checkbox    //input[@id="checkBoxOption2"]
#     Sleep    1s
#     Select Checkbox    //input[@id="checkBoxOption1"]
#     Sleep    1s
#     Select Checkbox    //input[@id="checkBoxOption3"]
#     Sleep    1s
#     Unselect Checkbox    //input[@id="checkBoxOption2"]

# Radio_button
#     [Tags]    Regression
#     # Browser_open
#     Select Radio Button    radioButton    radio2


*** Keywords ***
# Browser_open
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
#     Maximize Browser Window
#     Sleep    2s

# Browser_close
#     Close All Browsers

# Tc1
#     Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     Input Text    //input[@name="username"]    Admin
#     Input Password    //input[@name="password"]    admin123
#     Click Button    //button[@type="submit"]