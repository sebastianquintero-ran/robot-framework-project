*** Settings ***

Library   SeleniumLibrary

*** Keywords ***
Launching browser
    [Arguments]    ${urls}    ${browserName}
    Open Browser     ${urls}    ${browserName}
    Maximize Browser Window

Filling Registration Form
    Launching Browser    ${registrationForm}    chrome
    Maximize Browser Window
    Input Text    ${name}    test automation
    Input Text    ${phone}    1123123021
    Input Text    ${email}   test@automation.ts
    Select From List By Label    ${country}    Iceland
    Input Text    ${city}    Bogota
    Input Text    ${username}    testaut
    Input Text    ${password}    Pass123*

    #Click Button    ${submitBtn}