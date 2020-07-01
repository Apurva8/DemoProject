*** Settings ***
Documentation         This is suite for OMDb REST API testing sample
Library               RequestsLibrary
Library               JSONLibrary
Library               Collections
Library               DataDriver   ..\\Test_Data\\parameters.xlsx   sheet_name=Sheet1
Test Setup            OMDb session
Test Teardown         Delete All Sessions

*** Variables ***
#${YOUR_KEY}           b05f0a5
#${TITLE}              Titanic
#${TYPE}               movie
${EXPECTED_CODE}      200

*** Test Cases ***
Get data by required parameter
  [Documentation]     Test case for get OMDb data using required parameter
  ${response}         Get Request           ${session}
                      ...                   ?apikey=${YOUR_KEY}&s=${TITLE}
  ${actual_code}      Convert To String     ${response.status_code}
  Should Be Equal     ${actual_code}        ${EXPECTED_CODE}
  ${jsonresponse}     To Json               ${response.content}
  log to console      ${response.content}
  @{title_list}       Get Value From Json   ${jsonresponse}           $..Title
  Should Contain      ${title_list}         ${TITLE}


*** Keywords ***
OMDb session
   [Arguments]        ${YOUR_KEY}  ${TITLE}   ${TYPE}

  [Documentation]       Keyword for OMDb-API session
  Create Session        omdb-api        http://www.omdbapi.com/
  Set Suite Variable    ${session}      omdb-api
