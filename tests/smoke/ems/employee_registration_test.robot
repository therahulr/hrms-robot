*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library  DebugLibrary

Resource    ../../../keywords/base/base_keywords.robot
Resource    ../../../keywords/app_navigation/app_navigation_keywords.robot
Resource    ../../../keywords/smoke_test_keywords/ems/employee_registration_smoke_keywords.robot

Test Setup    Setup
Test Teardown    Teardown

*** Variables ***
${qualification_level}=  3

*** Test Cases ***
Smoke Testing: New Employee Registration
    [Tags]  smoke
    New Employee Registration

*** Keywords ***
New Employee Registration
    Login as an Admin
    Navigate To Employee Registration Wizard
    Fill Personal Information Details
    Fill Address Details
    Fill Experience Details
#    Fill PF Details
    Fill Documents Details
    Fill Profile Tab
