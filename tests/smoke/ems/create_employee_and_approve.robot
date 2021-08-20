*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library  DebugLibrary

Resource    ../../../keywords/base/base_keywords.robot
Resource    ../../../keywords/app_navigation/app_navigation_keywords.robot
Resource    ../../../keywords/smoke_keywords/ems/employee_registration_smoke_keywords.robot
Resource    ../../../keywords/smoke_keywords/ems/employee_approval_smoke_keywords.robot
Resource    ../../../keywords/smoke_keywords/attendance/mark_attendance_in_time.robot
Variables  ../../../pages/navigation/app_navigation_locators.py

Test Setup    Setup
Test Teardown    Teardown

*** Test Cases ***
Smoke Testing: Create an Employee and approve by admin
    [Tags]  smoke
    Create an employee
    Approve Employee By Admin
    Mark In Time By Created Employee


*** Keywords ***

Create an employee
    [Documentation]  Creating an employee in EMS
    Login as an Admin
    Navigate To Employee Registration Wizard
    Fill Personal Information Details
    Fill Address Details
    Fill Experience Details
#    Fill PF Details
    Fill Documents Details
    Fill Profile Tab

Approve the employee by Admin
    [Documentation]  Approve the employee by searching name
    Approve Employee By Admin

Mark In Time By Created Employee
    Try Reload If Element Is Not Visible  ${index_logo}
    Logout
    Login as Employee  ${official_email}  ${mobile_no}[-4:]
