*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${youtube}    https://youtube.com
${google}    https://google.com

*** Test Cases ***

Basic Test Case With Chrome
    Launching Browser    ${youtube}    chrome
    
Basic Test Case With Firefox
    Launching Browser    ${google}    firefox