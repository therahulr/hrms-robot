*** Settings ***
Documentation    This is for demo purpose to check scripts
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary
Library  OperatingSystem
Variables  ../resources/test_data/fake_data/faker_data.py
Variables  ../pages/attendance/mark_attendance_page.py
Variables  temp_programs.py
Resource    ../keywords/base/base_keywords.robot
Resource    ../keywords/custom/common_keywords.robot

Test Setup    Setup
Test Teardown    Teardown

*** Variables ***
${path}=  ${CURDIR}/${test_data_file}
${f}=  ${{random.randint(0, 100)}}
${loc}=  FirstLoc

*** Test Cases ***
Exporting Used Variables as Test Data
    Mark Attendance As Candidate

*** Keywords ***
Exporting Test Data
    create file  ${path}  This file contains test data used in Offer Letter${\n}
    file should exist  ${path}
    append to file  ${path}  First Name: ${first_name}
    append to file  ${path}  Last Name: ${first_name}
    append to file  ${path}  Middle Name: ${first_name}

Inline Expression
    [Arguments]  ${name}=Rahul
    log  ${name}

Mark Attendance As Candidate
    Login as an Employee
    wait until element is visible  ${check_in_btn}
    click element  ${check_in_btn}
    verify toaster message
    debug




