*** Settings ***
Documentation    Mark Attendance
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary
Library  OperatingSystem
Variables  ../../../resources/test_data/python_data/data.py
Variables  ../../../pages/attendance/mark_attendance_page.py

Resource  ../../../keywords/base/base_keywords.robot
Resource  ../../../keywords/common/common_keywords.robot

*** Keywords ***
Login as Employee
    [Arguments]  ${employee_username}  ${employee_pass}
    [Documentation]  Login as an Employee
    wait until element is visible  ${signin_btn}
    clear element text  ${username_field}
    input text  ${username_field}  ${employee_username}
    clear element text  ${password_field}
    input text  ${password_field}  ${employee_pass}
    click button  ${signin_btn}

Mark In Time
    wait until element is visible  ${inTimeBtn}
    click element  ${check_in_btn}
    verify toaster message