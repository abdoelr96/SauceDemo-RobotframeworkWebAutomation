*** Settings ***
Library     SeleniumLibrary
Resource    ../Data/SauceDemo_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Open SauceDemo Web
    Open browser    ${urlSauceDemo}    ${browserType}
    set window size    ${1700}    ${900}
    Wait until element is visible    ${btnLogin}    60