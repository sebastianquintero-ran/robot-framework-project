*** Settings ***

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling Sliders
    launching browser  https://jqueryui.com/resources/demos/slider/default.html    chrome
    Drag And Drop By Offset    xpath://*[@id="slider"]/span    400    0
