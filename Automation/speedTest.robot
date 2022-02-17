*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
speedTest
    ${speed}    get selenium speed
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  3seconds

    input text      name:firstname      Satish
    input text      name:lastname       Kumar

    select radio button     sex     Male
    select radio button     exp     4

    close browser
    ${speed}    get selenium speed
    log to console  ${speed}