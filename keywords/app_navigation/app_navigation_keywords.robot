*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library    DebugLibrary
Variables    ../../pages/offerdesk/offer_desk_navigation_locators.py
Variables    ../../pages/navigation/ems_navigation_locators.py

*** Keywords ***
#------------------------OFFER LETTER NAVIGATION------------------------#

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

