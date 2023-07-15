*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_HEADER_TEXT} =       Welcome To Our Studio!

*** Keywords ***

Verify Page load
    wait until page contains    ${HOME_HEADER_TEXT}

Navigate to home page
    [Arguments]             ${URL}
    go to                   ${URL}

