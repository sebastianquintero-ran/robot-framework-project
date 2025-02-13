*** Settings ***

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling Mouse Over events
    launching browser  https://way2automation.com/    chrome
    Mouse Over    xpath://*[@id="menu-item-27580"]
    Click Element    xpath://*[@id="menu-item-27580"]