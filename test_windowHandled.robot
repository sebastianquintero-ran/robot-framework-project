*** Settings ***

Library    SeleniumLibrary
Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

${registrationForm}    https://www.way2automation.com/way2auto_jquery/index.php

*** Test Cases ***

Registration form window handled test
    Filling Registration Form
    click link    link: ENTER TO THE TESTING WEBSITE
    click element    xpath://*[@href="registration.php"]
    @{windowHandles}=    get window handles
    switch window    ${windowHandles}[1]
    wait until element is visible    xpath:(//*[@name="name"])[1]
    input text    xpath:(//*[@name="name"])[1]    Test
    input text    xpath:(//*[@type="text"])[1]    Automation
    choose file    xpath://*[@type="file"]    /Users/sebastianquintero/Documents/Repos/Automation/Robot/Course/robot-framework-project/Resources/img/pluxee-img.png
    #close window
