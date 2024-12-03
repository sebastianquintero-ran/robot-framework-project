*** Settings ***

Library    SeleniumLibrary

*** Keywords ***



*** Variables ***
#Section to define global variables through the test of any type of value

${value}    100
${name}    Sebas
${floatvalue}    10.1
${browser}    Chrome
${url}    www.youtube.com

#list

@{cars}=    BMW    Chevy    Ford

#dict
${env}=    yt
&{urls}=    yt=https://youtube.com    gg=https//:google.com

*** Test Cases ***

Chrome test case
    log    ${value}
    Log    ${name}
    Log    ${floatvalue}
    Log    ${browser}
    Log    ${url}
    log    ${${value}+${floatvalue}}
    log    ${value} ${name}
    log    ${cars}[2] ${cars}[0]
    Log    ${urls.yt}
    Open Browser    ${urls.${env}}    ${browser}

#there is a way to run the automation from the terminal, with the command
# robot -v env:yt -v browser:chrome .variable.robot
    