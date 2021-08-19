*** Settings ***
Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables    ../../../pages/ems/employee_registration_locators.py
Variables    ../../../resources/test_data/python_data/data.py
Resource    ../../../keywords/common/common_keywords.robot
Resource    ../../app_navigation/app_navigation_keywords.robot

*** Variables ***
#${path}=  ${CURDIR}${/}..${/}..${/}..${/}results${/}smoke_testing${/}ems${/}${ems_creation_data_file}
${path}=  ${ems_test_data_export_dir}/${ems_exported_data}

*** Keywords ***
Fill Personal Information Details
    [Documentation]  Filling Personal Information Details
    Export Test Data In Text File  ${path}
    append to file  ${path}  *********************** PERSONAL INFORMATION ***********************${\n}
    Fill Data In Input Field  ${firstNameField}  ${first_name}  First Name
    Fill Data In Input Field  ${middleNameField}  ${middle_name}  Middle Name
    Fill Data In Input Field  ${lastNameField}  ${last_name}  Last Name
    Fill Data In Input Field  ${contactNumField}  ${mobile_no}  Mobile No.
    Fill Data In Input Field  ${emailIDField}  rahulr@techcellence.com  Email ID
    Select Random Option From Dropdown  ${maritalDropdownField}  Marital Status
    Fill Data In Input Field  ${panField}  ${pan_number}  PAN No
    Fill Data In Input Field  ${aadharField}  ${aadhar_no}  Aadhar No
    Select Random Option From Dropdown  ${genderDropdownField}  Gender
    Select Random Option From Dropdown  ${categoryDropdownField}  Category
    Fill Data In Input Field  ${DateOfBirthField}  ${dob}  Date Of Birth
    Click Action Button  ${personalInfoSaveBtn}
    Verify Toaster Message

Fill Address Details
    [Documentation]  Filling Address Details
    append to file  ${path}  ${\n}*********************** ADDRESS DETAILS ***********************${\n}
    wait until element is visible  ${addressInfoTab}
    click element  ${addressInfoTab}
    Fill Data In Input Field  ${address1field}  ${address_one}  Address Line 1
    Fill Data In Input Field  ${address2field}  ${address_two}  Address Line 2
    Select Random Option From Dropdown  ${countryDropdownField}  Country
    Select Random Option From Dropdown  ${stateDropdownField}  State
    Select Random Option From Dropdown  ${cityDropdownField}  City
    Fill Data In Input Field  ${postalCodeField}  ${postal_code}  Postal Code
    Click Action Button  ${addressInfoSaveBtn}
    Verify Toaster Message


Fill Academic Qualification
    Select Random Option From Dropdown  ${qualificationDropdownField}  Qualification
    Fill Data In Input Field  ${boardUniversityField}  ${board}  Board/University
    Fill Data In Input Field  ${percentageField}  ${percentage}  Percentage
    Select Random Option From Dropdown  ${passingYearDropdown}  Passing Year
#    click element  ${passedCheckBox}
#    click element  ${qualificationAddIcon}

Fill Professional Experience
    Fill Data In Input Field  ${organizationField}  ${organization}  Organisation
    Select Random Option From Dropdown  ${designationDropdownField}  Designation
    Fill Data In Input Field  ${expFromDateField}  ${experience_from_date}  Experience(From Date)
    Fill Data In Input Field  ${expToDateField}  ${experience_to_date}  Experience(To Date)
    Fill Data In Input Field  ${rolesField}  ${roles_responsibility}  Roles & Responsibility
    Fill Data In Input Field  ${achievementsField}  ${achievements}  Achievements
    Fill Data In Input Field  ${promotionField}  ${promotion}  Promotion(If Any)
    Fill Data In Input Field  ${reasonLeavingField}  ${reason_of_leaving}  Reason Of Leaving
    scroll if elemenet is not visible  ${expCancelBtn}

Fill Experience Details
    [Documentation]  Filling Experience Details
    append to file  ${path}  ${\n}*********************** EXPERIENCE DETAILS ***********************${\n}
    wait until element is visible  ${experienceDetailTab}
    click element  ${experienceDetailTab}
    Fill Academic Qualification
    Fill Professional Experience
    Click Action Button  ${expSaveBtn}
    Verify Toaster Message
    execute javascript  window.scrollTo(0, 0)

Fill Nominee Details
    [Documentation]  Filling Nominee Details
    append to file  ${path}  ${\n}--------------- NOMINEE DETAILS ---------------${\n}
    Click On Element  ${addNomineeBtn}
    Fill Data In Input Field  ${nomineeNameField}  ${nominee_name}  Nominee Name
    Fill Data In Input Field  ${nomeineeAddressField}  ${nominee_addr}  Nominee Address
    Select Random Option From Dropdown  ${relationDropdown}  Relation
    Fill Data In Input Field  ${nomineeDobField}  ${nominee_dob}  Nominee's Date Of Birth
    Fill Data In Input Field  ${shareAmount}  ${amount_percentage}  Percentage Share(Nominee)
    Click Action Button  ${nomineeAddBtn}

Fill PF Details
    [Documentation]  Filling PF Details
    append to file  ${path}  ${\n}*********************** PF DETAILS ***********************${\n}
    Click On Element  ${pfDetailsTab}
    Fill Data In Input Field  ${nameField}  ${first_name} ${last_name}  Full Name
    Fill Data In Input Field  ${accountNumField}  ${account_no}  Account No
    Fill Data In Input Field  ${bankNameField}  ${bank_name}  Bank Name
    Fill Data In Input Field  ${branchNameField}  ${branch_name}  Branch Name
    Fill Data In Input Field  ${micrNumField}  ${micr_no}  MICR No
    Fill Data In Input Field  ${ifscCodeField}  ${ifsc_code}  IFSC Code
    Fill Nominee Details
    Click Action Button  ${pfSaveBtn}
    Verify Toaster Message

Select Reporting Manager
    [Documentation]  Selecting Reporting Manager
    Click On Element  ${reporting_manager_search_icon}
    Click On Element  ${reporting_search_dropdown}
    Fill Data In Input Field  ${reporting_search_dropdown}  Admin  Reporting Manager
    sleep  2s
    Press Keys    ${reporting_search_dropdown}    ENTER
    sleep  2s
    click element  ${set_btn}

Fill Documents Details
    [Documentation]  Fill Document details
    append to file  ${path}  ${\n}*********************** DOCUMENT DETAILS ***********************${\n}
    Click On Element  ${docDetailsTab}
    Click On Element  ${addDocBtn}
    Select Random Option From Dropdown  ${docTypeDropdown}  Document Type
    Fill Data In Input Field  ${docNameField}  ${document_name}  Document Name
    Fill Data In Input Field  ${docDescriptionField}  ${document_description}  Document Description
    choose file  ${doc_choose_field}  ${document_selection_path}
    Click On Element  ${docUploadBtn}
    Click On Save Button  ${docSaveBtn}


Fill Profile Tab
    [Documentation]  Filling Profile Details
    append to file  ${path}  ${\n}*********************** PROFILE INFORMATION ***********************${\n}
    Click On Element  ${profileTab}
    Fill Data In Input Field  ${empIdField}  ${emp_id}  Employee ID
    Fill Data In Input Field  ${officialEmailField}  therahul@gmail.com  Official Email
    Fill Data In Input Field  ${dojField}  ${expected_date_of_joining}  Expected Date Of Joining
    Select Random Option From Dropdown  ${empTypeDropdown}  Employee Type
    Select Random Option From Dropdown  ${companyDropdown}  Company
    Select Random Option From Dropdown  ${locationDropdown}  Location
    Select Random Option From Dropdown  ${departmentDropdown}  Department
    Select Random Option From Dropdown  ${subDepartmentsDropdown}  Sub-Department
    Select Random Option From Dropdown  ${gradeDropdown}  Grade
    Select Reporting Manager
    Select Random Option From Dropdown  ${designationDropdown}  Designation
    Select Random Option From Dropdown  ${rolesDropdown}  Roles & Responsibility
    Select Random Option From Dropdown  ${employeeSkillDropdown}  Employee Skill
    Select Random Option From Dropdown  ${shiftDropdown}  Shift
    Select Random Option From Dropdown  ${policyDropdown}  Policy
    Click On Element  ${isBonusNo}
    Click On Element  ${isbonus_no_confirm}
    Click Action Button  ${profileSaveBtn}
    Verify Toaster Message


Employee Approval By Admin
    [Documentation]  Approving the last created employee
    Go To The Home Page
    Navigate To Employee Approval Screen

