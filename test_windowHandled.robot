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
    Click Element    xpath:(//*[@type="radio"])[1]
    Select Checkbox    name:hobby
    Select From List By Label    xpath:(//select[@name])[1]    India
    Select From List By Label    xpath:(//select[@name])[2]    1
    Select From List By Label    xpath:(//select[@name])[3]    1
    Select From List By Label    xpath:(//select[@name])[4]    2014
    Input Text    name:phone    0987654321
    Input Text    name:username    testaut
    Input Text    ${email}    test@automation.ts
    choose file    xpath://*[@type="file"]    /Users/sebastianquintero/Documents/Repos/Automation/Robot/Course/robot-framework-project/Resources/img/pluxee-img.png
    Input Text    xpath://textarea[@name]    I'm learning robot
    Input Text    name:password    Pass123*
    Input Text    name:c_password    Pass123*
#    close window
