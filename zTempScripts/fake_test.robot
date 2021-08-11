*** Settings ***
Documentation    This is for demo purpose to check scripts
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary
Variables  resources/test_data/fake_data/faker_data.py
Variables  temp_programs.py

*** Variables ***


*** Test Cases ***
Display all test data
    Display Test Data

*** Keywords ***
Display Test Data
    open browser  https://en.wikipedia.org/wiki/Neeraj_Chopra  chrome
    maximize browser window



