*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
dropdown
    open browser    ${url}  ${browser}
    maximize browser window

    #selecting from list box
    select from list by label       selenium_commands       Navigation Commands
    sleep       3
    select from list by index       selenium_commands       4
    sleep       3
    select from list by index       selenium_commands       2
    sleep       3

    close browser
*** Keywords ***
