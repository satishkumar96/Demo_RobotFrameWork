*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://alpha4a-test.sdms2.com/Default.aspx
${browser}  chrome

*** Test Cases ***
screenrobot
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Capture Element Screenshot      xpath://img[@src='App_Themes/Default/Images/Group.svg']     PSA.png
    Capture Page Screenshot     PSA_website.png

    Close All Browsers