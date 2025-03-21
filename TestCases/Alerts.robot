*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${url7}     https://demoqa.com/alerts
${browsername}      chrome


*** Test Cases ***
Hanlding Alerts
    Open Browser    ${url7}     ${browsername}      options= add_experimental_option("detach",True)
    Maximize Browser Window

    Scroll Element Into View    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[6]/span[1]/div[1]/div[1]
    Click Button    xpath=//button[@id='promtButton']
    Sleep    1s
    # Alert Should Be Present     Please enter your name
    Input Text Into Alert    Vinay
    #Sleep    2s
    #Handle Alert    ACCEPT


*** Keywords ***



