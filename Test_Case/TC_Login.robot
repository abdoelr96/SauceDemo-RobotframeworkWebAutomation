*** Settings ***
Library     SeleniumLibrary
Resource    ../Data/SauceDemo_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Login SauceDemo
    wait until element is visible   ${fieldUsername}  2s
    input text  ${fieldUsername}  ${username}
    wait until element is visible   ${fieldPassword}   2s
    input text   ${fieldPassword}   ${password}
    wait until element is visible   ${btnLogin}   2s
    click button    ${btnLogin}
    sleep    1s
    wait until element is visible    ${titleProduct}    60