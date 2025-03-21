*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
LoginTest
    Open Browser    ${url}      ${browser}  options= add_experimental_option("detach",True)
    logintoapplication


*** Keywords ***
logintoapplication
    Input Text    //input[@name='userName']    mercury
    Input Text    //input[@name='password']    mercury
    Maximize Browser Window
    Sleep    2
    Click Element    //input[@name='submit']
    Close All Browsers



