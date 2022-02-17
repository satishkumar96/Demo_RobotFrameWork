*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
browser tab close
    open browser    https://robotframework.org/     chrome
    maximize browser window

    Click Element   xpath://a[normalize-space()='SeleniumLibrary']  CTRL
    switch window   GitHub - robotframework/SeleniumLibrary: Web testing library for Robot Framework

    close window

    close browser