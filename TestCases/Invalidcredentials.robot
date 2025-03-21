*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          Chrome
${URL}             https://practicetestautomation.com/practice-test-login/    # Replace with your actual login URL
${SUBMIT_BUTTON}    xpath=//button[@id='submit']
${USERNAME_FIELD}  xpath=//input[@id='username']
${PASSWORD_FIELD}  xpath=//input[@id='password']
${ERROR_MESSAGE}   xpath=//div[@id='error']

*** Test Cases ***
Verify Different Login Error Messages
    [Template]    Login And Verify Error Message
    invalid_user    wrong_password    Your username is invalid!
    student      wrong_password    Your password is invalid!
    ""          Password123         Your username is invalid!
    student      ""             Your password is invalid!
    ""          ""             Your username is invalid!

*** Keywords ***
Login And Verify Error Message
    [Arguments]    ${username}    ${password}    ${expected_error}
    Open Browser    ${URL}    ${BROWSER}    options= add_experimental_option("detach",True)
    Maximize Browser Window
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Validate Error Message    ${expected_error}
    Close Browser

Input Username
    [Arguments]    ${username}
    Run Keyword If    '${username}' != 'empty'    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Run Keyword If    '${password}' != 'empty'    Input Text    ${PASSWORD_FIELD}    ${password}

Submit Credentials
    Click Element    ${SUBMIT_BUTTON}

Validate Error Message
    [Arguments]    ${expected_error}
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    timeout=5s
    Element Should Contain    ${ERROR_MESSAGE}    ${expected_error}