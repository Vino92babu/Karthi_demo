*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Tc2
    # Browser_open
    Select From List By Index    //select[@id="dropdown-class-example"]    2
    Sleep    2s
    Select From List By Label    //select[@id="dropdown-class-example"]    Option3
    Sleep    2s
    Select From List By Value    //select[@id="dropdown-class-example"]    option1
Checkbox
    # Browser_open
    Select Checkbox    //input[@id="checkBoxOption2"]
    Sleep    1s
    Select Checkbox    //input[@id="checkBoxOption1"]
    Sleep    1s
    Select Checkbox    //input[@id="checkBoxOption3"]
    Sleep    1s
    Unselect Checkbox    //input[@id="checkBoxOption2"]

Browser_open
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
    Maximize Browser Window
    Sleep    2s

Browser_close
    Close All Browsers

Radio_button
    # Browser_open
    Select Radio Button    radioButton    radio2
    
