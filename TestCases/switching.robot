*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${title1}
${title2}

*** Test Cases ***
MultipleBrowserTests
    Open Browser    https://www.irctc.com/     chrome  options= add_experimental_option("detach",True)
    Maximize Browser Window

    Sleep    3
    Open Browser    https://www.bing.com/       chrome  options= add_experimental_option("detach",True)
    Maximize Browser Window
    
    Switch Browser    1
    ${title1}=      Get Title
    Log To Console   ${title1}

    Switch Browser    2
    ${title2}=      Get title
    Log To Console    ${title2}


*** Keywords ***


