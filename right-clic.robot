*** Settings ***

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling right click
    launching browser  https://deluxe-menu.com/popup-mode-sample.html    chrome
    Open Context Menu    xpath:/html/body/div/table/tbody/tr/td[2]/div[2]/table[1]/tbody/tr/td[3]/p[2]/img
    mouse over    id:dm2m1i1tdT
    mouse over    id:dm2m2i1tdT
    click element    id:dm2m3i1tdT