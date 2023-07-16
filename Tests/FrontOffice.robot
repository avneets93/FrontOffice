*** Settings ***
Documentation    This is the main documentation for the suite
Resource        ../Resources/AppFrontOffice.robot
Resource        ../Resources/common.robot
Test Setup      Start Web Test
Test Teardown   End Web Test

*** Variables ***
${BROWSER} =        chrome
${URL} =            https://automationplayground.com/front-office/#

*** Test Cases ***

Should be able to access the "Team" page
    [Documentation]         Verify "Team" page is accessible
    [Tags]                  Smoke
    AppFrontOffice.Navigate to the home page      ${URL}
    AppFrontOffice.Click on "Team" Link

"Team" page should match requirements
    [Documentation]         Verify "Team" page is per requirements
    [Tags]                  Smoke
    AppFrontOffice.Navigate to the home page      ${URL}
    AppFrontOffice.Click on "Team" Link
    AppFrontOffice."Team" page should match requirements

Test Feature 2 changes
    Log     Test feature 2