*** Settings ***
Library    SeleniumLibrary    timeout=30s
Library  DebugLibrary

Resource    ../../../keywords/base/base_keywords.robot
Resource    ../../../keywords/app_navigation/app_navigation_keywords.robot
Resource    ../../../keywords/smoke_keywords/offerdesk/create_offer_smoke_keywords.robot

Test Setup    Setup
Test Teardown    Teardown

*** Test Cases ***
Test Case: Create Offer Smoke Testing
    [Tags]  smoke
    Verify create a new offer letter

*** Keywords ***
Verify create a new offer letter
    Login as an Admin
    Navigate To Offer Letter Page
    Go to Create Offer Form
    Fill Data In Create Offer Form
    Go to Salary Structure Form
    Fill Data In Offer Letter Salary Form
    debug
    Save Offer Letter