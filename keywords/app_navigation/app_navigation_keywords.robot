*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library    DebugLibrary
Variables    ../../pages/navigation/app_navigation_locators.py


*** Keywords ***
#------------------------HOME PAGE NAVIGATION------------------------
Navigate To The Home Page
    [Documentation]  Navigating to the Dashboard by click on Logo
    wait until element is visible  ${index_logo}
    click element  ${index_logo}
    wait until element is visible  ${dashboard_header}

#------------------------OFFER LETTER NAVIGATION------------------------

Navigate To Offer Desk Screen

Navigate To Offer Letter Page
    wait until page contains element    ${offerMenuBtn}
    click element    ${offerMenuBtn}
    mouse over    ${subMenuOfferDesk}
    click element    ${subMenuCreateOffer}

#----------------------------------EMS---------------------------------------

Navigate To Employee Registration Wizard
    [Documentation]  Navigate to the employee registration wizard
    wait until page contains element  ${menu_icon}
    click element  ${menu_icon}
    wait until element is visible  ${employee_creation_option}
    click element  ${employee_creation_option}
    wait until element is visible  ${employee_registration_btn}
    click element  ${employee_registration_btn}
    wait until element is visible  ${wizard_header}

Navigate To Employee Approval Screen
    [Documentation]  Navigate to the employee approval wizard
    wait until element is visible  ${menu_icon}
    click element  ${menu_icon}
    wait until element is visible  ${employee_approval_option}
    click element  ${employee_approval_option}
    wait until element is visible  ${employee_approval_screen_header}

Navigate To Mark Attendance Page
    wait until element is visible  ${markAttMenuLink}
    click element  ${markAttMenuLink}
    wait until element is visible  ${markAttSubMenu}
    click element  ${markAttSubMenu}
    wait until element is visible  ${markAttScreenHeader}


