*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library    DebugLibrary

*** Variables ***


*** Keywords ***

Select Value From Dropdown
    [Documentation]  Select value from dropdown
#    Required: Dropdown locator
    [Arguments]