*** Settings ***
Library    SeleniumLibrary    timeout=20s

Variables    ../pages/offerdesk/create_offer_page.py
Resource    ../keywords/base/base_keywords.robot
Resource    ../keywords/navigation/app_navigation_keywords.robot

Test Setup    Setup
Test Teardown    Teardown

*** Test Cases ***
Getting Web Elements
    Login as an Admin
    Navigate to create offer modal
    Run keyword And Continue On Failure  Open Create Offer Modal
    Run keyword And Continue On Failure  Get web elements from dropdown
    Run keyword And Continue On Failure  Get list items from dropdown


*** Keywords ***
Open Create Offer Modal
    wait until page contains element    ${createOfferBtn}
    click button    ${createOfferBtn}

Get web elements from dropdown
    [Documentation]  Getting web elements from dropdown in offer letter
    wait until element is visible  //div[@id='mCSB_6_container']//select[@name='country']

    click element  //div[@id='mCSB_6_container']//select[@name='country']/option[@value='IND']
    wait until element is visible  //div[@id='mCSB_6_container']//select[@name='state']
    click element  //div[@id='mCSB_6_container']//select[@name='state']
    wait until element is visible  (//div[@id='mCSB_6_container']//select[@name='state']/option)[2]

Get list items from dropdown
    ${res}=  get list items  //div[@id='mCSB_6_container']//select[@name='state']
    log  ${res}

    ${value}=  Evaluate  random.choice(${res})
    log  ${value}






