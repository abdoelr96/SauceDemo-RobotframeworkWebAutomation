*** Settings ***
Library     SeleniumLibrary
Resource    ../Data/SauceDemo_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Check Out items
    wait until element is visible   ${btnShoppingCart}  2s
    click button    ${btnShoppingCart}
    wait until element is visible   ${btnCheckOut}
    click button    ${btnCheckOut}
    wait until element is visible   ${fieldFirstName}  2s
    input text  ${fieldFirstName}  ${firstName}
    wait until element is visible   ${fieldLastName}  2s
    input text  ${fieldLastName}  ${LastName}
    wait until element is visible   ${fieldZipCode}  2s
    input text  ${fieldZipCode}  ${zipCode}
    click button    ${btnContinue}
    wait until element is visible   ${btnFinish}
    click button    ${btnFinish}