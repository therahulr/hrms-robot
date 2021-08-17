*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library  DebugLibrary

Resource    ../../../keywords/base/base_keywords.robot
Resource    ../../../keywords/app_navigation/app_navigation_keywords.robot
Resource    ../../../keywords/smoke_keywords/ems/employee_registration_smoke_keywords.robot
Resource    ../../../keywords/smoke_keywords/ems/employee_approval_smoke_keywords.robot

Test Setup    Setup
Test Teardown    Teardown