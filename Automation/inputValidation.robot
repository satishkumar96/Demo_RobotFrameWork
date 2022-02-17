*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.flipkart.com/
${browser}  chrome

*** Test Cases ***
ValidationTest
    open browser    ${url}  ${browser}
    wait until page contains    ${url}
    maximize browser window

    title should be     Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!

    click button        xpath://button[@class="_2KpZ6l _2doB4z"]

    ${search_txt}   set variable    xpath://input[@placeholder='Search for products, brands and more']
    element should be enabled       ${search_txt}
    element should be visible       ${search_txt}
    sleep   3
    input text      ${search_txt}       iphone
    sleep   3
    clear element text      ${search_txt}
    sleep   3
    close browser
*** Keywords ***