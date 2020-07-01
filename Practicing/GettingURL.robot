*** Settings ***
Library  SeleniumLibrary
Resource    ../Practicing/Resources.robot
Library     DataDriver     file=../TestData/UsersData.xlsx  sheet_name=ValidUsers
Test Template  GettingURLTest

*** Test Cases ***
Get URL Test with Excel with   ${users}


*** Keywords ***
GettingURLTest
    [Arguments]     ${users}
    Get URL    ${users}
