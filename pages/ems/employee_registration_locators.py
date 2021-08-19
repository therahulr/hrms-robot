personalInformationTab = "//a[@id='personalInfoTab']"
firstNameField = "//form[@id='personalform']//input[contains(@name,'firstName')]"
middleNameField = "//form[@id='personalform']//input[contains(@name,'middleName')]"
lastNameField = "//form[@id='personalform']//input[contains(@name,'lastName')]"
contactNumField = "//form[@id='personalform']//input[contains(@name,'contact')]"
emailIDField = "//form[@id='personalform']//input[contains(@name,'email')]"
maritalDropdownField = "//form[@id='personalform']//select[@name='martialStatus']"
panField = "//form[@id='personalform']//input[contains(@name,'panNo')]"
aadharField = "//form[@id='personalform']//input[contains(@name,'aadharNo')]"
genderDropdownField = "//form[@id='personalform']//select[@name='gender']"
categoryDropdownField = "//form[@id='personalform']//select[@name='category']"
DateOfBirthField = "//form[@id='personalform']//input[contains(@name,'dob')]"
# FORM ACTION
personalInfoCancelBtn = "//form[@id='personalform']//button[normalize-space()='Cancel']"
personalInfoResetBtn = "//form[@id='personalform']//button[normalize-space()='Reset']"
personalInfoSaveBtn = "//form[@id='personalform']//button[normalize-space()='Save']"
personalInfoForwardNavArrow = "//form[@id='personalform']//i[@class='la la-arrow-right']"

addressInfoTab = "//a[@id='addressInfoTab']"
address1field = "//form[@id='addressform']//textarea[@name='primaryAddress']"
address2field = "//form[@id='addressform']//textarea[@name='secondaryAddress']"
countryDropdownField = "//form[@id='addressform']//select[@name='country']"
stateDropdownField = "//form[@id='addressform']//select[@name='state']"
cityDropdownField = "//form[@id='addressform']//select[@name='city']"
postalCodeField = "//form[@id='addressform']//input[@name='pinCode']"
# FORM ACTION
addressInfoCancelBtn = "//form[@id='addressform']//button[normalize-space()='Cancel']"
addressInfoResetBtn = "//form[@id='addressform']//button[normalize-space()='Reset']"
addressInfoSaveBtn = "//form[@id='addressform']//button[normalize-space()='Save']"
addressInfoForwardNavArrow = "//form[@id='addressform']//i[@class='la la-arrow-right']"
addressInfoBackNavArrow = "//form[@id='addressform']//i[@class='la la-arrow-left']"

experienceDetailTab = "//a[@id='experienceInfoTab']"
# Academic Qualification
qualificationDropdownField = "//body//div[@id='m_repeater_1']//div[@id='m_repeater_1']//div//div//div[1]//div[1]//div[2]//select[1]"
qualificationAddIcon = "//candidate-experience-info//div[@id='m_repeater_1']//i[@class='la la-plus']//parent::span//parent::div"
boardUniversityField = "//div[@id='m_repeater_1']//div[2]//div[1]//div[2]//input[1]"
percentageField = "//div[@id='m_repeater_1']//div[3]//div[1]//div[2]//input[1]"
passingYearDropdown = "//div[@id='m_widget11_tab3_content']//div[4]//div[1]//div[2]//select[1]"
passedCheckBox = "//input[@class='ng-valid ng-touched ng-dirty']"
passedCheckBox = "//input[@class='ng-valid ng-dirty ng-touched']"
qualificationDeleteIcon = "//a[@title='Delete']"
isFresherCheckbox = "//input[@name='isFresher']"
# Professional Experience
organizationField = "//label[normalize-space()='Professional Experience']//parent::div/parent::div//input"
designationDropdownField = "//label[normalize-space()='Professional Experience']//parent::div/parent::div//input//following::select"
expFromDateField = "//div[@id='m_repeater_2']//div[3]//div[1]//div[2]//input[1]"
expToDateField = "//div[@id='m_widget11_tab3_content']//div[4]//div[1]//div[2]//input[1]"
rolesField = "//label[contains(text(),'Roles & Responsibility')]/../..//textarea"
achievementsField = "//label[contains(text(),'Achievements')]/../..//textarea"
promotionField = "//label[contains(text(),'Promotions')]/../..//textarea"
reasonLeavingField = "//label[contains(text(),'Reason Of Leaving')]/../..//textarea"
professionalDeleteIcon = "//label[contains(text(),'Professional Experience')]/../..//i[@class='flaticon-delete-2']"
professionalAddIcon = "//candidate-experience-info//div[@id='m_repeater_2']//i[@class='la la-plus']//parent::span//parent::div"
# Form Action
expSaveBtn = "//form[@id='professionalexperience']/div//button[normalize-space()='Save']"
expCancelBtn = "//candidate-experience-info//button[contains(text(),'Cancel')]"

pfDetailsTab = "//a[normalize-space(text()) = 'PF Detail']"
pfScheme1952RadioYes = "//input[@name='employeePensionScheme']"
pfScheme1952RadioNo = "//body//div[@id='m_widget11_tab4_content']//div//div//div[1]//div[1]//label[2]//span[1]"
pfScheme1955RadioYes = "//body//div[@id='m_widget11_tab4_content']//div//div//div[2]//div[1]//label[1]//span[1]"
pfScheme1955RadioNo = "//div[@id='m_widget11_tab4_content']//div[2]//div[1]//label[2]//span[1]"
nameField = "//input[@name='name']"
accountNumField = "//input[@name='accountNo']"
bankNameField = "//input[@name='bankName']"
branchNameField = "//input[@name='branchName']"
micrNumField = "//input[@name='micrNo']"
ifscCodeField = "//input[@name='ifsc']"
uanField = "//input[@name='uan']"
pfNumField = "//input[@name='pfNo']"
# Add Nominee
addNomineeBtn = "//button[normalize-space()='Add Nominee']"
nomineeModalHeader = "//h5[@id='addNomineeModalLabel']"
nomineeNameField = "//form[@id='pfNomineeForm']//input[@name='nomineeName']"
nomeineeAddressField = "//form[@id='pfNomineeForm']//textarea[@name='nomineeAddress']"
relationDropdown = "//form[@id='pfNomineeForm']//select[@name='nomineeRelation']"
nomineeDobField = "//form[@id='pfNomineeForm']//input[@name='nomineeDob']"
shareAmount = "//input[@id='shareAmountPercentage']"
nomineeAddBtn = "//form[@id='pfNomineeForm']//button[contains(text(),'Add')]"
nomineeCloseBtn = "//form[@id='pfNomineeForm']//button[contains(text(),'Close')]"
# Form Action
pfSaveBtn = "//body//form[@id='pfform']//div//div//div//button[normalize-space()='Save']"
pfCancelBtn = "//body//form[@id='pfform']//div//div//div//button[normalize-space()='Cancel']"

docDetailsTab = "//a[normalize-space(text())='Documents']"
addDocBtn = "//button[@data-target='#addDocumentModal' and contains(text(),'Add')]"
docTypeDropdown = "//select[@id='ems_ddl_docType']"
docNameField = "//input[@id='ems_ddl_docName']"
docDescriptionField = "//textarea[@id='ems_ddl_docDesc']"
doc_choose_field = "//input[@id='ems_ddl_docFile']"
docUploadBtn = "//form[@id='documentupload']//button[@id='edit']"
docClearBtn = "//div[@id='addDocumentModal']//button[@id='cancel']"
docAddBtn = "//div[@id='addDocumentModal']//button[@id='edit']"
# Form Action
docSaveBtn = "//div[@class='col-lg-12']//div//button[@class='btn btn-success'][normalize-space()='Save']"
docCancelBtn = "//div[@class='col-lg-12']//div//button[@class='btn btn-warning'][normalize-space()='Cancel']"

profileTab = "//a[normalize-space(text()) = 'Profile']"
empIdField = "//input[@name='employeeId']"
officialEmailField = "//input[@name='officialEmail']"
dojField = "//input[@name='doj']"
empTypeDropdown = "//select[@name='employeeType']"
companyDropdown = "//select[@name='company']"
locationDropdown = "//select[@name='locationId']"
departmentDropdown = "//select[@name='departmentId']"
subDepartmentsDropdown = "//select[@name='subDepartmentId']"
gradeDropdown = "//select[@name='gradeId']"
reportingManagerField = "//input[@name='reporteeManager']"
reporting_manager_search_icon = "//i[@class='fa flaticon-search-magnifier-interface-symbol']"
reporting_search_dropdown = "//ng-select[@placeholder='Search']//input[@role='combobox']"
set_btn = "//button[normalize-space()='Set']"
designationDropdown = "//select[@name='designationId']"
rolesDropdown = "//select[@name='roleId']"
employeeSkillDropdown = "//select[@name='skill']"
shiftDropdown = "//select[@name='shift']"
policyDropdown = "//select[@name='policy']"
isBonusYes = "//label[@class='m-radio m-radio--solid'][normalize-space()='Yes']//span"
isBonusNo = "//label[@class='m-radio m-radio--solid'][normalize-space()='No']//span"
isbonus_no_confirm = "//button[normalize-space()='Yes']"
bonusFrequencyDropdown = "//select[@name='bonusFrequency']"
payoutMonthDropdown = "//select[@name='BonusPayoutMonth']"
profileSaveBtn = "//div[@class='col-lg-9']//button[@class='btn btn-success'][normalize-space()='Save']"
profileSubmitBtn = "//div[@class='col-lg-9']//button[@class='btn btn-success'][normalize-space()='Submit']"
profileCancelBtn = "//div[@class='col-lg-9']//button[@class='btn btn-warning'][normalize-space()='Cancel']"
toastMsg = ".toast-message"

# -----------------------EMS Approval------------------------
approval_search_field = "//input[@id='created-employee-Approval-Search']"
employee_approval_confirmation_header = "//h5[normalize-space()='Employee Approve']"
remark_field = "//textarea[@name='remark']"
send_btn = "//button[normalize-space()='Send']"
close_btn = "//form[@id='approvalStatusForm']//button[@type='button'][normalize-space()='Close']"
approval_profile_tab = "//a[normalize-space()='Profile']"
approve_ems_btn = "//button[normalize-space()='Approve']"


