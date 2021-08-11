*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables    ../../../pages/ems/employee_registration_locators.py
Variables    ../../../resources/test_data/fake_data/faker_data.py
Resource    ../../../keywords/custom/common_keywords.robot

*** Variables ***
${size}=  3

*** Keywords ***
Fill Personal Information Details
    [Documentation]  Filling Personal Information Details
    Fill Data In Input Field  ${firstNameField}  ${first_name}
    Fill Data In Input Field  ${middleNameField}  ${middle_name}
    Fill Data In Input Field  ${lastNameField}  ${last_name}
    Fill Data In Input Field  ${contactNumField}  ${mobile_no}
    Fill Data In Input Field  ${emailIDField}  ${emailid}
    Select Random Option From Dropdown  ${maritalDropdownField}
    Fill Data In Input Field  ${panField}  ${pan_number}
    Fill Data In Input Field  ${aadharField}  ${aadhar_no}
    Select Random Option From Dropdown  ${genderDropdownField}
    Select Random Option From Dropdown  ${categoryDropdownField}
    Fill Data In Input Field  ${DateOfBirthField}  ${dob}
    Click Action Button  ${personalInfoSaveBtn}
    Verify Toaster Message

Fill Address Details
    [Documentation]  Filling Address Details
    wait until element is visible  ${addressInfoTab}
    click element  ${addressInfoTab}
    Fill Data In Input Field  ${address1field}  ${address_one}
    Fill Data In Input Field  ${address2field}  ${address_two}
    Select Random Option From Dropdown  ${countryDropdownField}
    Select Random Option From Dropdown  ${stateDropdownField}
    Select Random Option From Dropdown  ${cityDropdownField}
    Fill Data In Input Field  ${postalCodeField}  ${postal_code}
    Click Action Button  ${addressInfoSaveBtn}
    Verify Toaster Message


Fill Academic Qualification
    Select Random Option From Dropdown  ${qualificationDropdownField}
    Fill Data In Input Field  ${boardUniversityField}  ${board}
    Fill Data In Input Field  ${percentageField}  ${percentage}
    Select Random Option From Dropdown  ${passingYearDropdown}
#    click element  ${passedCheckBox}
#    click element  ${qualificationAddIcon}

Fill Professional Experience
    Fill Data In Input Field  ${organizationField}  ${organization}
    Select Random Option From Dropdown  ${designationDropdownField}
    Fill Data In Input Field  ${expFromDateField}  ${experience_from_date}
    Fill Data In Input Field  ${expToDateField}  ${experience_to_date}
    Fill Data In Input Field  ${rolesField}  ${roles_responsibility}
    Fill Data In Input Field  ${achievementsField}  ${achievements}
    Fill Data In Input Field  ${promotionField}  ${promotion}
    Fill Data In Input Field  ${reasonLeavingField}  ${reason_of_leaving}
    scroll if elemenet is not visible  ${expCancelBtn}

Fill Experience Details
    [Documentation]  Filling Experience Details
    wait until element is visible  ${experienceDetailTab}
    click element  ${experienceDetailTab}
    Fill Academic Qualification
    Fill Professional Experience
    Click Action Button  ${expSaveBtn}
    Verify Toaster Message
    execute javascript  window.scrollTo(0, 0)

Fill Nominee Details
    [Documentation]  Filling Nominee Details
    Click On Element  ${addNomineeBtn}
    Fill Data In Input Field  ${nomineeNameField}  ${nominee_name}
    Fill Data In Input Field  ${nomeineeAddressField}  ${nominee_addr}
    Select Random Option From Dropdown  ${relationDropdown}
    Fill Data In Input Field  ${nomineeDobField}  ${nominee_dob}
    Fill Data In Input Field  ${shareAmount}  ${amount_percentage}
    Click Action Button  ${nomineeAddBtn}

Fill PF Details
    [Documentation]  Filling PF Details
    Click On Element  ${pfDetailsTab}
    Fill Data In Input Field  ${nameField}  ${first_name} ${last_name}
    Fill Data In Input Field  ${accountNumField}  ${account_no}
    Fill Data In Input Field  ${bankNameField}  ${bank_name}
    Fill Data In Input Field  ${branchNameField}  ${branch_name}
    Fill Data In Input Field  ${micrNumField}  ${micr_no}
    Fill Data In Input Field  ${ifscCodeField}  ${ifsc_code}
    Fill Nominee Details
    Click Action Button  ${pfSaveBtn}
    Verify Toaster Message

Select Reporting Manager
    [Documentation]  Selecting Reporting Manager
    Click On Element  ${reporting_manager_search_icon}
    Click On Element  ${reporting_search_dropdown}
    Fill Data In Input Field  ${reporting_search_dropdown}  Admin
    sleep  2s
    Press Keys    ${reporting_search_dropdown}    ENTER
    sleep  2s
    click element  ${set_btn}

Fill Documents Details
    [Documentation]  Fill Document details
    Click On Element  ${docDetailsTab}
    Click On Element  ${addDocBtn}
    Select Random Option From Dropdown  ${docTypeDropdown}
    Fill Data In Input Field  ${docNameField}  ${document_name}
    Fill Data In Input Field  ${docDescriptionField}  ${document_description}
    choose file  ${doc_choose_field}  ${document_file_path}
    Click On Element  ${docUploadBtn}
    Click On Save Button  ${docSaveBtn}


Fill Profile Tab
    [Documentation]  Filling Profile Details
    Click On Element  ${profileTab}
    Fill Data In Input Field  ${empIdField}  ${emp_id}
    Fill Data In Input Field  ${officialEmailField}  ${official_email}
    Fill Data In Input Field  ${dojField}  ${expected_date_of_joining}
    Select Random Option From Dropdown  ${empTypeDropdown}
    Select Random Option From Dropdown  ${companyDropdown}
    Select Random Option From Dropdown  ${locationDropdown}
    Select Random Option From Dropdown  ${departmentDropdown}
    Select Random Option From Dropdown  ${subDepartmentsDropdown}
    Select Random Option From Dropdown  ${gradeDropdown}
    Select Reporting Manager
    Select Random Option From Dropdown  ${designationDropdown}
    Select Random Option From Dropdown  ${rolesDropdown}
    Select Random Option From Dropdown  ${employeeSkillDropdown}
    Select Random Option From Dropdown  ${shiftDropdown}
    Select Random Option From Dropdown  ${policyDropdown}
    Click On Element  ${isBonusNo}
    Click On Element  ${isbonus_no_confirm}
    Click Action Button  ${profileSaveBtn}
    Verify Toaster Message
    debug