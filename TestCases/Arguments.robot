*** Settings ***
Library     SeleniumLibrary     #For interacting with web elements (open browser, input text, click button, etc.).
Library     String      # For string manipulation (optional in this case).
Library     OperatingSystem     # To handle file operations, like taking screenshots.


*** Variables ***


*** Test Cases ***
TC1
  Print All Arguments1  apple    banana  cherry
  Print All Arguments2  CAT    DOG    HEN

*** Keywords ***
Print All Arguments1
    [Arguments]    @{values}
    FOR     ${item1}     IN      @{values}
        ${uppercase_item1}=  Convert To Upper Case    ${item1}
        Log    ${uppercase_item1}
    END

Print All Arguments2
    [Arguments]    @{values}
    FOR     ${item2}     IN      @{values}
        ${uppercase_item2}=  Convert To Lower Case    ${item2}
        Log    ${uppercase_item2}
    END
