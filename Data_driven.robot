*** Settings ***
Library  SeleniumLibrary
Resource    ../RobotFramework/Login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close browsers
Test Setup  log to console  Execution of test case
Test Teardown  log to console   Completion of executing the test case
Test Template  Invalid Login

*** Test Cases ***
Right user empty pwd    admin@yourstore.com     ${EMPTY}
Right user wrong pwd    admin@yourstore.com     xyz
Wrong user right pwd    adm@yourstore.com     admin
Wrong user empty pwd    admin@yourstore.com     ${EMPTY}
Wrong user wrong pwd    adm@yourstore.com     xyz

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input password  ${password}
    Click Login button
    Error message should be visible


