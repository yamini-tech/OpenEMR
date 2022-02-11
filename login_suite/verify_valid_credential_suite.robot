*** Settings ***
Documentation  This suite file verifies all the test cases related to the valid credentials.
...     the documentation contains the information about the project

Library    SeleniumLibrary
Resource   ../base/common_functionality.resource

Test Setup    Launch Browser
Test Teardown    End Browser

*** Test Cases ***
Verify Valid Credential Test
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice     English (Indian)
    Click Element    xpath=//button[@type='submit']
    Title Should Be    Openemr


*** Keywords ***
Verify Valid Credentials Template