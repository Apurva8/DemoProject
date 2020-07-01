*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.ebay.com/

*** Test Cases ***
Verify Basic Functionality for ebay
    [Documentation]     This test case verifies the basic search
    [Tags]  Functional

    Open Browser                ${url}      ${browser}
    Input Text                 //*[@id="gh-ac"]     mobile
    Press Keys                 //*[@id="gh-btn"]    [Return]
    Page Should Contain        results for mobiles
    Close Browser

*** Keywords ***

