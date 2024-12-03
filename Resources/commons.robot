*** Settings ***

Library   SeleniumLibrary

*** Keywords ***
Launching browser
    [Arguments]    ${urls}    ${browserName}
    Open Browser     ${urls}    ${browserName}
    Maximize Browser Window