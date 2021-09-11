*** Settings ***
Library    SeleniumLibrary    timeout=30s
Library  DebugLibrary

Resource    ../../../keywords/base/base_keywords.robot
Resource    ../../../keywords/app_navigation/app_navigation_keywords.robot
Resource    ../../../keywords/smoke_keywords/offerdesk/create_offer_smoke_keywords.robot

Test Setup    Setup
Test Teardown    Teardown

*** Test Cases ***
Test Case: Create Offer with fake data and using random dropdown selection
    [Tags]  smoke
    Run test in a loop

*** Keywords ***
Verify create a new offer letter
    Navigate To Offer Letter Page
    Go to Create Offer Form
    Fill Data In Create Offer Form
    Go to Salary Structure Form
    Fill Data In Offer Letter Salary Form
    Save Offer Letter

Run test in a loop
    Login as an Admin
    FOR  ${i}  IN RANGE  ${20}
        RUN KEYWORD  Verify create a new offer letter
    END
