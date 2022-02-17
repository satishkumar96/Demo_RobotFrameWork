*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
closingbrowser
    open browser    https://www.google.com/     chrome
    maximize browser window
    sleep   3

    open browser    https://www.flipkart.com/     chrome
    maximize browser window
    sleep   3

    #close browser #close only latest open browser
    close all browsers