*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =    css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***

Verify Page load
    wait until page contains element        ${TEAM_HEADER_LABEL}

Validate page contents
    ${element_text} =   get text    ${TEAM_HEADER_LABEL}
    should be equal as strings      ${element_text}     Our Amazing Team    ignore_case=true
    #element text should be         ${TEAM_HEADER_LABEL}         Our Amazing Team