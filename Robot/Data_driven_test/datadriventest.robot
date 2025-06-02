*** Settings ***
# Library    SeleniumLibrary
# Resource    Resources.robot
# Suite Setup    open my browser    
# Suite Teardown    Close Browsers
# Test Template    Invalid login
# Library    DataDriver    Test_data/InvalidLogins.xlsx


# *** Test Cases ***    user    pass    err_msg
# Right User Wrong pass    ede    abc    Invalid credentials
# Wrong user right pass    ain@yourstore.com    admin    Invalid credentials
# Wrong User empty pass    adn@yourstore.com    ${EMPTY}    Required
# Right user empty pass    Admin    ${EMPTY}    Required

# *** Test Cases ***
# invalidTest  using   ${username} ${password}    ${error}

# *** Keywords ***
# Invalid login 
#     [Arguments]    ${username}    ${password}    ${error}
#     Input username    ${username}
#     Input Pass    ${password}
#     sleep    2s
#     Click Login button
#     Error Message Should be visible    ${error}


