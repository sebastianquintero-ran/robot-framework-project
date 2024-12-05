*** Settings ***

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***

${registrationForm}    https://www.way2automation.com/way2auto_jquery/index.php

*** Test Cases ***
Registration Test
    Filling Registration Form
