*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables    ../../../pages/ems/employee_registration_locators.py
Variables    ../../../resources/test_data/fake_data/faker_data.py
Resource    ../../../keywords/common/common_keywords.robot
Resource    ../../app_navigation/app_navigation_keywords.robot


Resource    ../../../keywords/base/base_keywords.robot
Test Setup    Setup
Test Teardown    Teardown

*** Variables ***
${full_name}=  Aaina Mallick
${path}=  ${CURDIR}${/}..${/}..${/}..${/}results${/}smoke_testing${/}ems${/}ApprovalEMS.txt
${employee_name_link}=  //div//table//tbody//div//tr//span//a[contains(text(),'${full_name}')]
${field_name}=  Search Field
*** Test Cases ***
Sample Test For EMS Approval
        Testing Keywords


*** Keywords ***

Click On Employee Name After Searching
    [Arguments]   ${full_name}
    wait until element is visible  ${employee_name_link}
    click element  ${employee_name_link}
    append to file  ${path}  ${field_name} : Clicked on - ${full_name}\n
    wait until element is visible  //h3[normalize-space()='Candidate wizard']

Click On Profile Tab
    wait until element is visible  //a[normalize-space()='Profile']
    click element  //a[normalize-space()='Profile']
    scroll element into view  //button[normalize-space()='Approve']
    wait until element is enabled  //button[normalize-space()='Approve']
    click element  //button[normalize-space()='Approve']
    wait until element is visible  ${employee_approval_confirmation_header}
    fill data in input field  ${remark_field}  Approved by Rahul    Remark Field
    click on element  ${send_btn}
    capture page screenshot
    verify toaster message
    debug

Testing Keywords
    Login as an Admin
    Navigate To Employee Approval Screen
    Search By ID/Name  ${approval_search_field}  SSPL194  Search Field
    debug
    click on employee name after searching  ${full_name}
    click on profile tab


