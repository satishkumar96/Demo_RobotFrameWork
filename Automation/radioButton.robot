*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
Validate Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window

    #Selecting radio buttons
    select radio button     sex     Female
    select radio button     exp     6

    #Selecting the checkboxes
    select checkbox     Manual Tester
    select checkbox     Automation Tester

    unselect checkbox   Manual Tester

    close browser
*** Keywords ***