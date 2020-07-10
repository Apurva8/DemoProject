*** Settings ***
Library  SeleniumLibrary
Resource    ../API_DEMO/Resources.robot
#Library     DataDriver     file=../TestData/UsersData.xlsx  sheet_name=InvalidUsers
Library     DataDriver     file=../TestData/API_InvalidUsers.csv
Suite Setup  log    creating the session
Suite Teardown  log     closing the session
Test Setup  log     Started execution of test case
Test Teardown  log   Completion of executing the test case
Test Template  InvalidTest

*** Test Cases ***
Users Test with ${user}

*** Keywords ***
InvalidTest
    [Arguments]     ${user}     ${expected_code}
    log  <a href="../TestData/API_InvalidUsers.csv">Input Data File<a>    html=True
    Invalid Users    ${user}        ${expected_code}
