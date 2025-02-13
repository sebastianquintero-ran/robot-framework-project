*** Settings ***

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling resizing elements
    launching browser  https://jqueryui.com/resources/demos/resizable/default.html    chrome
    Drag And Drop By Offset    xpath://*[@id="resizable"]/div[3]    400    400
