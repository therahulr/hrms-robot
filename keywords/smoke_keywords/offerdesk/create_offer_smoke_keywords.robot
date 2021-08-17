*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables    ../../../pages/offerdesk/create_offer_page.py
Variables    ../../../resources/test_data/python_data/data.py
Resource    ../../../keywords/common/common_keywords.robot

*** Variables ***
${path}=  ${CURDIR}${/}..${/}..${/}..${/}results${/}smoke_testing${/}offer_desk${/}${create_offer_data_file}

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
    append to file  ${path}  \n*********************** Offer Letter - Salary Structure ***********************${\n}
    Scroll If Elemenet Is Not Visible  ${ctcField}
    wait until element is enabled  ${ctcField}
    Fill Data In Input Field  ${ctcField}  ${salary_ctc}  CTC(In Salary Modal)
    mouse out  ${ctcField}
    press keys  ${ctcField}  ENTER
    sleep  2s
    scroll element into view  ${saveSalaryBtn}
    wait until element is visible  ${saveSalaryBtn}
    wait until element is enabled  ${saveSalaryBtn}
    click button  ${saveSalaryBtn}

Fill Data In Create Offer Form
    [Documentation]  Clicking on create offer button
    Export Test Data In Text File  ${path}
    append to file  ${path}  *********************** Create Offer Form ***********************${\n}
    Fill Data In Input Field  ${firstnamefield}  ${first_name}  First Name
    Fill Data In Input Field  ${middleNameField}  ${middle_name}  Middle Name
    Fill Data In Input Field  ${lastnamefield}  ${last_name}  Last Name
    Fill Data In Input Field  ${emailidfield}  ${emailid}  Email ID
    Fill Data In Input Field  ${mobileNumberField}  ${mobile_no}  Mobile Number
    Fill Data In Input Field  ${dateofbirthfield}  ${dob}  Date of birth
    Select Random Option From Dropdown  ${categoryDropdownField}  Category
    Select Random Option From Dropdown  ${genderDropdownField}  Gender
    Fill Data In Input Field  ${addressField}  ${address}  Address
    Select Random Option From Dropdown  ${countryDropdownField}  Country
    Select Random Option From Dropdown  ${stateDropdownField}  State
    Select Random Option From Dropdown  ${cityDropdownField}  City
    Fill Data In Input Field  ${postalField}  ${postal_code}  Postal Code
    Fill Data In Input Field  ${panField}  ${pan_number}  PAN No
    Fill Data In Input Field  ${expectedDojField}  ${expected_date_of_joining}  Expected Date Of Joining
    Select Random Option From Dropdown  ${designationDropdownField}  Designation
    Select Random Option From Dropdown  ${deptDropdownField}  Department
    Select Random Option From Dropdown  ${empTypeDropdownField}  Employee Type
#    Select Random Option From Dropdown  ${locationDropdownField}
    Select A Value From Dropdown  ${locationDropdownField}  Gurugram  Location
    Select Random Option From Dropdown  ${gradeDropdownField}  Grade
    Select Random Option From Dropdown  ${skillDropdownField}  Skill
    scroll element into view  ${expYearField}
    Fill Data In Input Field  ${expYearField}  ${work_exp_year}  Experience(In Year)
    Fill Data In Input Field  ${expMonthField}  ${work_exp_month}  Experience(In Month)

Save Offer Letter
    Scroll If Elemenet Is Not Visible  ${saveOfferBtn}
    wait until element is enabled  ${saveOfferBtn}
    scroll element into view  ${saveOfferBtn}
    Click On Save Button  ${saveOfferBtn}




