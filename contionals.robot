*** Variables ***

${NAME}=    Test Automation

*** Test Cases ***
If Block
    IF    "${NAME}" == "Test"
        log to console    Name is correct
    ELSE
        log to console    Name is incorrect
    END