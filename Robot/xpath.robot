'''Locating with respect to elements and Attribite
 syntax: //tagname[@attribute = 'value'] 

 input --> tagname
 @id --> attribute

1    Locating element with known attribute. 
ex://*[@attribute = 'value']
2    Locating element with known tagname & Atrribute
ex: //input[@maxlength="15"]
3    Location Element with known visible text[Exact Match]
ex:  //*[text()='Name:']
4    Location Element with known visible text[partial Match]
ex:  //*[contains(text(),'Name:')]
5    Locating elements with Multiple Attributes
ex://*[@type="text"][@id="name"][@class="form-control"]
6    Locating elements when starting visible text is known
ex: //*[starts-with(text(),'abc')]

Locating Element relative to known elements:
1    Locating a parent element
ex: //*[@id="textarea"]/parent::div
2    Locating a child element
//*[@class="form-group"]/child::input
3    Locating following element
//*[@id='123']/following::div
//*[@id='123']/following::div[3]-->to find ecact element
4    Locating preceding element
//*[@id='123']/preceding::div[3]
5    Locating following slibling
//*[@id='123']/following-sibling::div[3]
6 Locating preceeding slibling
//*[@id='123']/preceding-sibling::div[3]
Syntax: 
//*[@atributename= 'value]



Automation Testing Practice

//*[@class="oxd-input-group oxd-input-field-bottom-space"]/parent::div/parent::form/child::div[3]/following-sibling::div/child::p

'''

*** Settings ***
Library    SeleniumLibrary
# Library    XML

*** Test Cases ***
# xpath
    # Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    # Maximize Browser Window
    # Sleep    2s
    # Click Element    //input[@name="username"]
    # Input Text    //input[@name="username"]    Vino

    # Open Browser    https://testautomationpractice.blogspot.com/    chrome
    # Maximize Browser Window    
    # Click Element    //*[starts-with(text(),'AU')]
    