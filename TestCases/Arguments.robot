*** Settings ***
Library     SeleniumLibrary     #For interacting with web elements (open browser, input text, click button, etc.).
Library     String      # For string manipulation (optional in this case).
Library     OperatingSystem     # To handle file operations, like taking screenshots.


*** Variables ***


*** Test Cases ***
TC1
  Print All Arguments  apple    banana  cherry


*** Keywords ***
Print All Arguments
    [Arguments]    @{values}
    FOR     ${item}     IN      @{values}
        ${uppercase_item}=  Convert To Upper Case    ${item}
        Log    ${uppercase_item}
    END


