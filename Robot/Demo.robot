*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://www.qafox.com/selenium/selenium-practice/
${browser}    chrome
@{abc}    Vinoth    Karthik


*** Test Cases ***
TC1
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2s
    Input Text    //input[@name="username"]    Admin
    Input Password    //input[@name="password"]    admin123
    Click Button    //button[@type="submit"]

# Dropdown
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
#     Maximize Browser Window
#     Sleep    2s
#     Select From List By Index    //select[@id="dropdown-class-example"]    3
#     Sleep    1s
#     Select From List By Label    //select[@id="dropdown-class-example"]    Option2
#     Sleep    1s
    # Select From List By Value    //select[@id="dropdown-class-example"]    option1
    # Sleep    1s
    # Select From List By Value    //select[@id="dropdown-class-example"]    option2
    # Sleep    1s
    # Unselect From List By Value    //select[@id="dropdown-class-example"]    option1
    # Sleep    1s

# validate_checkbok
#     Checkbox

Checkbox
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
    Maximize Browser Window
    Sleep    2s
    Select Checkbox    //input[@id="checkBoxOption2"]
    Sleep    1s
    Select Checkbox    //input[@id="checkBoxOption1"]
    Sleep    1s
    Select Checkbox    //input[@id="checkBoxOption3"]
    Sleep    1s
    Unselect Checkbox    //input[@id="checkBoxOption1"]
    Sleep    1s
    

RadioButton
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
    Maximize Browser Window
    Sleep    2s
    Select Radio Button    radioButton    radio2
    Sleep    1s
    Select Radio Button    radioButton    radio1
    Select Radio Button    radioButton    radio3

# KeyboardAction
#     Open Browser    https://the-internet.herokuapp.com/key_presses    chrome
#     Maximize Browser Window
#     Sleep    2s
#     Press Keys    //input[@id="target"]    ENTER
#     Sleep    1s
#     Press Keys    //input[@id="target"]    TAB
#     Sleep    1s
#     Press Keys    //input[@id="target"]    SPACE
#     Sleep    1s


# """waits"""
# SeleniumSpeed
# SeleniumTimout
# Implict wait
# Sleep


# waits
#     Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
#     Maximize Browser Window
#     # Sleep    2s
#     Set Selenium Speed    5s
#     Set Selenium Timeout    30s    
#     Input Text    //input[@name="usernam"]    Admin
#     Input Password    //input[@name="password"]    admin123
#     Click Button    //button[@type="submit"]

# Tabbedwindow
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
#     Maximize Browser Window
#     Sleep    2s
#     Click Link    //a[@href="https://www.qaclickacademy.com"]
#     Switch Window    QAClick Academy - A Testing Academy to Learn, Earn and Shine
#     Sleep    2s
#     Click Element    //a[@href="https://www.udemy.com/user/testing-minds/"]


# Alerts
#     Open Browser    https://testautomationpractice.blogspot.com/    chrome
#     Maximize Browser Window
#     Sleep    2s
#     Click Button    //button[@id="alertBtn"]
#     Set Selenium Speed    2s
#     Handle Alert    accept
#     Click Button    //button[@id="confirmBtn"]
#     Handle Alert    dismiss

# Mouseaction
#     Open Browser    ${url}    ${browser}
#     Maximize Browser Window    
#     Sleep    2s
#     ${loc}    Get Location
#     Log To Console    ${loc}


#     Go To    https://tutorialsninja.com/demo/
#     Maximize Browser Window    
#     Sleep    2s
#     ${loc}    Get Location
#     Log To Console    ${loc}

#     Go Back
#     ${loc}    Get Location
#     Log To Console    ${loc}

# Scrolling
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
#     Maximize Browser Window
#     Sleep    2s
    # Execute Javascript    window.scrollTo(0,10000)
    # Scroll Element Into View    //button[@id="mousehover"]
    # Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    # sleep    2s
    # Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)

# Multiple Browser test
#     Open Browser    https://www.google.com/    chrome
#     Maximize Browser Window
#     Sleep    2s
    
#     Open Browser    https://www.bing.com/    edge
#     Maximize Browser Window
#     Sleep    2s

#     Switch Browser    1
#     ${tittle}    Get Title
#     Log To Console    ${tittle}
    
#     Switch Browser    2
#     ${tittle}    Get Title
#     Log To Console    ${tittle}
#     Close Browser
    # Close All Browsers



# Forloop
    # FOR    ${i}    IN RANGE    1    10+1
    #     Log    ${i}
        
    # END

    # FOR    ${i}    IN RANGE    1    10+1
    #     Log To Console    ${i}
        
    # END

    # FOR    ${i}    IN    @{abc}
    #     Log To Console    ${i}
    # END
    
    # ${name}    Set Variable    nameofteam

    # @{mylist}    Create List    apple orange yellow red blue
    # FOR    ${i}    IN    @{mylist}
    #     Log    ${i}
    # Log To Console    ${i}
    
    # END

# Get Links
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
#     Maximize Browser Window
#     Sleep    2s
#     ${linkcount}    Get Element Count    //button
#     Log To Console    ${linkcount}
#     @{linklist}    Create List    
#     FOR    ${i}    IN RANGE    1    ${linkcount}+1
#         ${linklist}    Get Text    (//button)[${i}]
#     Log To Console    ${linklist}
#     END


# iframe
#     Open Browser    https://www.hyrtutorials.com/p/frames-practice.html#google_vignette    chrome
#     Maximize Browser Window
#     Sleep    2s
#     Select Frame    //iframe[@id="frm1"]
#     Select From List By Index    //*[@id="course"]    2
#     Unselect Frame

# Table validation
#     Open Browser    https://testautomationpractice.blogspot.com/    Chrome
#     Maximize Browser Window
#     Sleep    2s
#     Scroll Element Into View    //h2[text()="Static Web Table"]
#     ${row}    Get Element Count    //table[@name="BookTable"]/tbody/tr
#     ${col}    Get Element Count    //table[@name="BookTable"]/tbody/tr[1]/th
#     Log To Console    ${row}
#     Log To Console    ${col}
#     ${data}    Get Text    //table[@name="BookTable"]/tbody/tr[2]/td[2]
#     Log To Console    ${data}
#     Sleep    2s
#     Table Column Should Contain    //table[@name="BookTable"]    1   Master In Selenium
#    Table Row Should Contain    locator    row    expected

*** Keywords ***
# Checkbox
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
#     Maximize Browser Window
#     Sleep    2s
#     Select Checkbox    //input[@id="checkBoxOption2"]
#     Sleep    1s
#     Select Checkbox    //input[@id="checkBoxOption1"]
#     Sleep    1s
#     Select Checkbox    //input[@id="checkBoxOption3"]
#     Sleep    1s
#     Unselect Checkbox    //input[@id="checkBoxOption1"]
#     Sleep    1s
