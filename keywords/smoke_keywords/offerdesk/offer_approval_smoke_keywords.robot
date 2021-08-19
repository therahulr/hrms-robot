*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables    ../../../pages/offerdesk/create_offer_page.py
Variables    ../../../resources/test_data/python_data/data.py
Resource    ../../../keywords/common/common_keywords.robot

*** Variables ***
${file_path}=  ${od_td_data_path}${/}${od_td_file_name}

*** Keywords ***




