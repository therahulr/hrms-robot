*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library  DebugLibrary

Resource    ../../../keywords/base/base_keywords.robot
Resource    ../../../keywords/app_navigation/app_navigation_keywords.robot
Resource    ../../../keywords/smoke_keywords/ems/employee_registration_smoke_keywords.robot

Test Setup    Setup
Test Teardown    Teardown

*** Variables ***


*** Test Cases ***
Smoke Testing: Fill Candidate Onboarding Form
    [Tags]  smoke
    Candidate Onboarding Form

*** Keywords ***
Candidate Onboarding Form
    Login as an Admin
    Navigate To Employee Registration Wizard
    Fill Personal Information Details
    Fill Address Details
    Fill Experience Details
    Fill PF Details
    Fill Documents Details
#    Fill Profile Tab
    debug

