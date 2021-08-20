*** Settings ***
Library    SeleniumLibrary    timeout=20s
Library  OperatingSystem
Variables  ../../resources/test_data/python_data/data.py

*** Variables ***

#${default_file_path}=  ${default_td_file}

*** Keywords ***
Export Test Data In Text File
    [Arguments]  ${td_file}
    create file  ${td_file}  ***TEST DATA***${\n}
    file should exist  ${td_file}


Scroll If Elemenet Is Not Visible
    [Arguments]   ${locator}
    [Documentation]  Scroll element into view if not visible ${locator}
    wait until element is visible  ${locator}
    ${is_visible}=  get element count  ${locator}
    run keyword if  ${is_visible}<1  scroll element into view  ${locator}

Fill Data In Input Field
    [Arguments]   ${locator}  ${value}  ${field_name}=${locator}
    [Documentation]  Fill Data In Input Field "${locator}" with value = ${value}
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is visible  ${locator}
    wait until element is enabled  ${locator}
    input text  ${locator}  ${value}
    append to file  ${file_path}  ${field_name} : ${value}\n

Fill Data In Password Field
    [Arguments]   ${locator}  ${value}
    [Documentation]  Fill Data In Password Field "${locator}" with value = ${value}
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is visible  ${locator}
    wait until element is enabled  ${locator}
    input password  ${locator}  ${value}

Edit Data In Input Field
    [Arguments]   ${locator}  ${value}
    [Documentation]  Edit Data In Input Field with value = ${value}
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is visible  ${locator}
    wait until element is enabled  ${locator}
    clear element text  ${locator}
    input text  ${locator}  ${value}

Edit Data In Password Field
    [Arguments]   ${locator}  ${value}
    [Documentation]  Edit Data In Password Field with value = ${value}
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is visible  ${locator}
    wait until element is enabled  ${locator}
    clear element text  ${locator}
    input password  ${locator}  ${value}

Select A Value From Dropdown
    [Arguments]   ${locator}  ${label}  ${field_name}=${locator}
    [Documentation]  Selecting a specific option from the dropdown
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is enabled  ${locator}
    select from list by label  ${locator}  ${label}
    append to file  ${file_path}  ${field_name}: Selected option - ${label}\n

Select Random Option From Dropdown
    [Arguments]   ${locator}  ${field_name}=${locator}
    [Documentation]  Selecting a random option from the dropdown
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is enabled  ${locator}
    click element  ${locator}
    wait until element is visible  ${locator}//option[2]
    ${all_options}=  get list items  ${locator}
    ${option_exclude_select}=  evaluate  [val for val in ${all_options} if not val.startswith('Select')]
    ${random_option}=  evaluate  random.choice(${option_exclude_select})
    log  ${random_option}
    select from list by label  ${locator}  ${random_option}
    append to file  ${file_path}  ${field_name} : Selected Random option - ${random_option}\n

Click On Save Button
    [Arguments]   ${saveBtn}
    [Documentation]  Clicking on save button
    Scroll If Elemenet Is Not Visible  ${saveBtn}
    wait until element is enabled  ${saveBtn}
    click element  ${saveBtn}
    Verify Toaster Message


Click Action Button
    [Arguments]   ${locator}
    [Documentation]  Click Button
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is enabled  ${locator}
    click element  ${locator}

Verify Toaster Message
    [Documentation]  Capturing Toaster Message
    wait until element is visible  css:.toast-message
    ${toaster_msg}    get text    css:.toast-message
    log  ${toaster_msg}
    capture page screenshot
    wait until element is not visible  css:.toast-message
    append to file  ${file_path}  \nToaster Message - ${toaster_msg}

Click On Element
    [Arguments]   ${locator}
    [Documentation]  Clicking on the element ${locator}
    Scroll If Elemenet Is Not Visible  ${locator}
    wait until element is enabled  ${locator}
    click element  ${locator}

Try Reload If Element Is Not Visible
    [Arguments]  ${locator}
    ${get_element_count}=  get element count  ${locator}
    run keyword if  ${get_element_count} < 0  reload page











