*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK} =       Team

*** Keywords ***

Verify "Team" Link
    wait until page contains    Team

Click on "Team" Link
    click link              ${TOPNAV_TEAM_LINK}