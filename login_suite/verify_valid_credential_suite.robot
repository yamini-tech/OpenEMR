*** Settings ***
Documentation  This suite file verifies all the test cases related to the valid credentials.
...     the documentation contation the information about the project

Library    SeleniumLibrary

*** Test Cases ***
Verify Valid Credential Test
    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice     English (Indian)
    Click Element    xpath=//button[@type='submit']
    Title Should Be    Openemr
    Close Browser