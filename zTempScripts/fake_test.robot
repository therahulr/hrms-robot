*** Settings ***
Documentation    This is for demo purpose to check scripts
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary
Library  OperatingSystem
Variables  ../resources/test_data/python_data/data.py
Variables  ../pages/attendance/mark_attendance_page.py
Variables  temp_programs.py
Resource    ../keywords/base/base_keywords.robot
Resource    ../keywords/common/common_keywords.robot

#Test Setup    Setup
#Test Teardown    Teardown

*** Variables ***
#${path}=  ${CURDIR}/${defult_test_data_file}
#${pathx}=  ${CURDIR}/${defult_test_data_file}
#${pathss}=  ${CURDIR}/${ems_creation_data_file}
#${f}=  ${{random.randint(0, 100)}}
#${loc}=  FirstLoc

${path}=  ${CURDIR}${/}..${/}



*** Test Cases ***
Exporting Used Variables as Test Data
    Print Path Variables

*** Keywords ***
Exporting Test Data
    [Arguments]  ${path}
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


Print Path Variables
#    log  ${offer_desk_test_data_export_dir}${/}${create_offer_exported_data}
#    create file  ${result}/${ems_creation_data_file}
#    append to file  ${result}  This is Rahul Raj
    log  ${path}
