*** Settings ***


Library    SeleniumLibrary


*** Keywords ***

*** Variables ***

${base_url}  https://practicetestautomation.com/practice-test-login/

*** Test Cases ***

Basic intial test
    log    Basic test case #"log" is a keyword like echo in php or system.println.out in java

Second Test Case
    Open Browser    ${base_url}    chrome
    Set Selenium implicit wait    10s
    log title
    ${text}=    get text    //*[@id="login"]/h2
    input text    id:username    student
    input text    id:password   Password123
    wait until element is visible    id:submit
    Close Browser
    
