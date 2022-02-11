*** Settings ***
Documentation  This suite file verifies all the test cases related to the valid credentials.
...   the documentation contation the information about the project

Library    SeleniumLibrary

*** Test Cases ***
Verify Valid Credential Test
    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/