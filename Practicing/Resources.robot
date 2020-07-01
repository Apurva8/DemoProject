*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library     Collections

*** Variables ***
${base_url}     https://api.github.com

*** Keywords ***
Validate User
    [Arguments]     ${users}
    create session      mysession     ${base_url}
    ${response}=    get request     mysession    ${users}
    ${body}=     convert to string  ${response.content}
    should not contain      ${body}  Not

Get URL
    [Arguments]     ${users}
    create session      mysession     ${base_url}
    ${response}=    get request     mysession    ${users}
    ${body}=     convert to string  ${response.content}
    ${json} =  set variable  ${response.json()}
    ${repos}=     set variable    ${json["public_repos"]}
    log     ${repos}



