*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables    ../../../pages/ems/employee_registration_locators.py
Variables    ../../../resources/test_data/python_data/data.py
Resource    ../../../keywords/common/common_keywords.robot
Resource    ../../app_navigation/app_navigation_keywords.robot
Resource    ../../../keywords/base/base_keywords.robot


*** Variables ***
${employee_name_link}=  //div//table//tbody//div//tr//span//a[contains(text(),'${full_name}')]


*** Keywords ***
Search By ID/Name
    wait until element is visible  ${approval_search_field}
    wait until element is enabled  ${approval_search_field}
    input text  ${approval_search_field}  ${emp_id}
    append to file  ${file_path}  Search Field: Searched employee by ID - ${emp_id}\n

Click On Employee Name After Searching
    wait until element is visible  ${employee_name_link}
    click element  ${employee_name_link}
    append to file  ${file_path}  Clicked on - ${full_name}\n
    wait until element is visible  //h3[normalize-space()='Candidate wizard']

Click On Profile Tab and Approve
    [Documentation]  Click on Profile tab in EMS wizard and approve the employee
    wait until element is visible  ${approval_profile_tab}
    click element  ${approval_profile_tab}
    scroll element into view  ${approve_ems_btn}
    wait until element is enabled  ${approve_ems_btn}
    click element  ${approve_ems_btn}
    wait until element is visible  ${employee_approval_confirmation_header}
    fill data in input field  ${remark_field}  Approved by Rahul    Remark Field
    click on element  ${send_btn}
    capture page screenshot
    verify toaster message

Return Login Credential in Test Data File
    append to file  ${file_path}  ${\n}Employee is successfully approved in the system. Please login with following credential.
    append to file  ${file_path}  \nEmail Id: ${official_email}
    append to file  ${file_path}  \nPassword: ${mobile_no}[-4:]


Approve Employee By Admin
    Navigate To The Home Page
    Navigate To Employee Approval Screen
    Search By ID/Name
    Click On Employee Name After Searching
    Click On Profile Tab and Approve
    Return Login Credential in Test Data File



