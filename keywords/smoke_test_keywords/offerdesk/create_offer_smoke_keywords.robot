*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables    ../../../pages/offerdesk/create_offer_page.py
Variables    ../../../resources/test_data/fake_data/faker_data.py
Resource    ../../../keywords/custom/common_keywords.robot

*** Keywords ***

Go to Create Offer Form
    [Documentation]  Clicking on create offer button
    wait until page contains element    ${createOfferBtn}
    click button    ${createOfferBtn}

Go to Salary Structure Form
    Scroll If Elemenet Is Not Visible  ${salaryStructureBtn}
    wait until element is enabled  ${salaryStructureBtn}
    click element  ${salaryStructureBtn}

Fill Data In Offer Letter Salary Form
    [Documentation]  Selecting random option from the dynamic dropdown -- evaluated some python scripts here
    Scroll If Elemenet Is Not Visible  ${ctcField}
    wait until element is enabled  ${ctcField}
    Fill Data In Input Field  ${ctcField}  ${salary_ctc}
    mouse out  ${ctcField}
    sleep  2s
    Scroll If Elemenet Is Not Visible  ${saveSalaryBtn}
    wait until element is enabled  ${saveSalaryBtn}
    click element  ${saveSalaryBtn}

Fill Data In Create Offer Form
    [Documentation]  Clicking on create offer button
    Fill Data In Input Field  ${firstnamefield}  ${first_name}
    Fill Data In Input Field  ${middleNameField}  ${middle_name}
    Fill Data In Input Field  ${lastnamefield}  ${last_name}
    Fill Data In Input Field  ${emailidfield}  ${emailid}
    Fill Data In Input Field  ${mobileNumberField}  ${mobile_no}
    Fill Data In Input Field  ${dateofbirthfield}  ${dob}
    Select Random Option From Dropdown  ${categoryDropdownField}
    Select Random Option From Dropdown  ${genderDropdownField}
    Fill Data In Input Field  ${addressField}  ${address}
    Select Random Option From Dropdown  ${countryDropdownField}
    Select Random Option From Dropdown  ${stateDropdownField}
    Select Random Option From Dropdown  ${cityDropdownField}
    Fill Data In Input Field  ${postalField}  ${postal_code}
    Fill Data In Input Field  ${panField}  ${pan_number}
    Fill Data In Input Field  ${expectedDojField}  ${expected_date_of_joining}
    Select Random Option From Dropdown  ${designationDropdownField}
    Select Random Option From Dropdown  ${deptDropdownField}
    Select Random Option From Dropdown  ${empTypeDropdownField}
    Select Random Option From Dropdown  ${locationDropdownField}
    Select Random Option From Dropdown  ${gradeDropdownField}
    Select Random Option From Dropdown  ${skillDropdownField}
    scroll element into view  ${expYearField}
    Fill Data In Input Field  ${expYearField}  ${work_exp_year}
    Fill Data In Input Field  ${expMonthField}  ${work_exp_month}

Save Offer Letter
    Scroll If Elemenet Is Not Visible  ${saveOfferBtn}
    wait until element is enabled  ${saveOfferBtn}
    Click On Save Button  ${saveOfferBtn}




