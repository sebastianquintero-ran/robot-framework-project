*** Settings ***

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

*** Keywords ***
Ending the test
    close browser

*** Test Cases ***

Handling drag and drop
    launching browser  https://jqueryui.com/resources/demos/droppable/default.html    chrome
    Drag And Drop    id:draggable    id:droppable
