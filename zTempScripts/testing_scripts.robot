*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary
Library  OperatingSystem
Variables  ../resources/test_data/python_data/data.py
Resource  ../resources/variables/file_directory_path.robot

*** Variables ***


${path}=  ${create_offer_export_test_data}



*** Test Cases ***
Exporting Used Variables as Test Data
    Print Path Variables

*** Keywords ***

Print Path Variables
    log  ${path}
    create file  ${path}
    append to file  ${path}  Rahul Raj
