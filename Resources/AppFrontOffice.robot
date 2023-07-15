*** Settings ***
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/Teams.robot
Resource    ../Resources/PO/TopNav.robot

*** Variables ***

*** Keywords ***

Navigate to the home page
    [Arguments]         ${URL}
    Home.Navigate to home page    ${URL}
    Home.Verify Page load

Click on "Team" Link
    TopNav.Verify "Team" Link
    TopNav.Click on "Team" Link
    Teams.Verify Page load

"Team" page should match requirements
    Teams.Validate page contents
