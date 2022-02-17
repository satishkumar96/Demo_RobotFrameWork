*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
timeout
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium timeout    10 seconds
    wait until page contains    AUTOMATION_PRACTICE     #default timeout is 5 seconds

    input text      name:firstname      Satish
    input text      name:lastname       Kumar

    select radio button     sex     Male
    select radio button     exp     4

    close browser