*** Settings ***

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

${registrationForm}    https://www.way2automation.com/way2auto_jquery/index.php

*** Test Cases ***
Filling Registration Form
    Launching Browser    ${registrationForm}    chrome
    Input Text    ${name}    test automation
    Input Text    ${phone}    1123123021
    Input Text    ${email}   test@automation.ts
    Select From List By Label    ${country}    Iceland
    Input Text    ${city}    Bogota
    Input Text    ${username}    testaut
    Input Text    ${password}    Pass123*
    Click Button    ${submitBtn}
 