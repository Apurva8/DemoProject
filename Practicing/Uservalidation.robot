*** Settings ***
Library  SeleniumLibrary
Resource    ../Practicing/Resources.robot
Library     DataDriver     file=../TestData/UsersData.xlsx  sheet_name=Users
Test Template  UserExistenceTest

*** Test Cases ***
Users Test with Excel with   ${users}

*** Keywords ***
UserExistenceTest
    [Arguments]     ${users}
    Validate User    ${users}
