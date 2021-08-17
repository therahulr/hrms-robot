*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables  ../../pages/login_page.py
Variables  ../../resources/environment_data/login_credentials_data.py
Variables  ../../pages/dashboard_page.py
Variables  ../../resources/environment_data/env_data.py
Resource  ../common/common_keywords.robot

*** Keywords ***

SetUp
  [Documentation]  Open url in ${browser} browser
  open browser  ${url}  ${browser}
  maximize browser window


TearDown
    [Documentation]  Quitting browser
    close browser

Login as an Admin
    [Documentation]  Login as an Admin
    wait until element is visible  ${signin_btn}
    input text  ${username_field}  ${admin_username}
    input text  ${password_field}  ${admin_pass}
    click button  ${signin_btn}
    wait until element is visible  ${dashboard_logo}

Login as an Employee
    [Documentation]  Login as an Employee
    wait until element is visible  ${signin_btn}
    input text  ${username_field}  ${employee_username}
    input text  ${password_field}  ${employee_pass}
    click button  ${signin_btn}
#    wait until element is visible  ${dashboard_logo}

Login as a Manager
    [Documentation]  Login as a Manager
    wait until element is visible  ${signin_btn}
    input text  ${username_field}  ${manager_username}
    input text  ${password_field}  ${manager_pass}
    click button  ${signin_btn}
    wait until element is visible  ${dashboard_logo}

Verify Dashboard Title
    [Documentation]  Verifying dashboard title
    ${verifyTitle}  get title
    should be equal as strings  ${verifyTitle}

Goto dashboard
    [Documentation]  Navigating to dashboard
    wait until element is visible  ${dashboard_logo}
    click element  ${dashboard_logo}

Logout
    [Documentation]  Logout from system
    wait until element is visible  ${profile_btn}
    click element  ${profile_btn}
    wait until element is visible  ${logout_btn}
    click element  ${logout_btn}
    wait until element is visible  ${signin_btn}
