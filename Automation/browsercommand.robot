*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}  https://www.techlistic.com/p/selenium-practice-form.html
${url2}  https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Go%20To
${browser}  chrome

*** Test Cases ***
browser commands
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep   3

    Go To   ${url2}
    sleep   3

    Go Back
    sleep   3
    Close All Browsers