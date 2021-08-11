# CREATE OFFER FORM LOCATORS
firstNameField = "//input[@placeholder='First Name']"
middleNameField = "//input[@placeholder='Middle Name']"
lastNameField = "//input[@placeholder='Last Name']"
emailIDField = "//input[@placeholder='abc@xyz.com']"
mobileNumberField = "//form[@id='createOffer1']//input[@name='phone']"
DateOfBirthField = "//form[@id='createOffer1']//input[@name='dob']"
categoryDropdownField = "//form[@id='createOffer1']//select[@name='empCategory']"

genderDropdownField = "//form[@id='createOffer1']//select[@name='empGender']"
gender_male = "//form[@id='createOffer1']//select[@name='empGender']/option[normalize-space()='MALE']"

addressField = "//form[@id='createOffer1']//textarea[@name='primaryAddress']"

countryDropdownField = "//form[@id='createOffer1']//select[@name='country']"
india = "//form[@id='createOffer1']//select[@name='country']/option[normalize-space()='India']"

stateDropdownField = "//form[@id='createOffer1']//select[@name='state']"
stateOption = "//form[@id='createOffer1']//select[@name='state']/option[normalize-space()='Bihar']"

cityDropdownField = "//form[@id='createOffer1']//select[@name='city']"
cityOption = "//form[@id='createOffer1']//select[@name='city']/option[normalize-space()='Patna']"

postalField = "//form[@id='createOffer1']//input[@name='postalCode']"
panField = "//form[@id='createOffer1']//input[@name='panNo']"

expectedDojField = "//form[@id='createOffer1']//input[@name='doj']"

designationDropdownField = "//form[@id='createOffer1']//select[@name='empDesignation']"
desigOption = "//form[@id='createOffer1']//select[@name='empDesignation']/option[normalize-space()='Assistant HR']"

deptDropdownField = "//form[@id='createOffer1']//select[@name='empDepartment']"
deptOption = "//form[@id='createOffer1']//select[@name='empDepartment']/option[normalize-space()='Human Resource']"

empTypeDropdownField = "//form[@id='createOffer1']//select[@name='employeeType']"
empTypeOption = "//form[@id='createOffer1']//select[@name='employeeType']/option[normalize-space()='Permanent']"

locationDropdownField = "//form[@id='createOffer1']//select[@name='location']"

locationOption = "//form[@id='createOffer1']//select[@name='location']/option[normalize-space()='Gurugram']"

gradeDropdownField = "//form[@id='createOffer1']//select[@name='grades']"
gradeOption = "//form[@id='createOffer1']//select[@name='grades']/option[normalize-space()='A']"

skillDropdownField = "//form[@id='createOffer1']//select[@name='empSkill']"
skillsOption = "//form[@id='createOffer1']//select[@name='empSkill']/option[normalize-space()='Skilled']"

expYearField = "//form[@id='createOffer1']//input[@name='experienceYear']"
expMonthField = "//form[@id='createOffer1']//input[@name='experienceMonth']"
salaryStructureBtn = "//form[@id='createOffer1']//input[@title='Define salary structure for candidate']"

# SALARY MODAL LOCATOR
# salaryModalTitle = "//div[@id='m_modal_1_2']//div//h5[@id='exampleModalLabel'][normalize-space()='Salary structure']"
salaryModalTitle = "//div[@id='m_modal_1_2']//h5[@id='exampleModalLabel']"
ctcField = "//div[@id='m_modal_1_2']//input[@name='ctc']"
grossField = "//div[@id='m_modal_1_2']//input[@name='gross']"
ctcYearlyField = "//div[@id='m_modal_1_2']//input[@name='ctcNameAnnual']"
saveSalaryBtn = "//button[@type='button'][normalize-space()='Save']"
cancelSalaryBtn = "//button[@type='button'][normalize-space()='Cancel']"

# CREATE OFFER FORM SAVE AND CANCEL BUTTON
saveOfferBtn = "//button[@id='formSubmit']"
cancelOfferBtn = "//button[@type='reset']"

# Success and error ID toast
successToast = "//*[@id='toast-container']"
emailAlreadyExistToast = ""
