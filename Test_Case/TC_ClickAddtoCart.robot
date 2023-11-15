*** Settings ***
Library     SeleniumLibrary
Resource    ../Data/SauceDemo_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Add item to cart
    wait until element is visible   ${itemtoCart}
    click element   ${itemtoCart}
    wait until element is visible   ${btnAddtoCart}}  2s
    click button    ${btnAddtoCart}