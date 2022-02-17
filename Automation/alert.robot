*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
Handle Alert
    open browser    ${url}  ${browser}
    maximize browser window

    click button    xpath://button[@onclick='myFunction()']
    sleep   3
    Handle Alert    ACCEPT      #Press OK button

    click button    xpath://button[@onclick='myFunction()']
    sleep   3
    Handle Alert    DISMISS     #Press CANCEL button

    click button    xpath://button[@onclick='myFunction()']
    sleep   3
    Alert Should Be Present     Press a button!         #Alert text should be in full sentence
                                                        #press OK button by default

    click button    xpath://button[@onclick='myFunction()']
    sleep   3
#    Alert Should Not Be Present     Press a button!         #Alert text should be in full sentence
                                                            #press CANCEL button by default
    Close All Browsers