*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
InputBox
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    input text  xpath://input[@title='Search']       Amazon
    click button    xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    clear element text  xpath://input[@aria-label='Search']
    sleep   2
    input text  xpath://input[@aria-label='Search']     Facebook
    click button    xpath://span[@class='z1asCe MZy1Rb']/../..
    close browser
*** Keywords ***