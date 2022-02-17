*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
dropdown
    open browser    ${url}  ${browser}
    maximize browser window

    #Selecting from dropdown menu
    select from list by label       continents      Asia
    sleep       3
    select from list by index       continents      6
    sleep       3

    close browser
*** Keywords ***