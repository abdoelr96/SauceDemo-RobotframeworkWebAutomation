*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Data/SauceDemo_Variables.robot
Variables   ../Data/common_xpath.py
Resource    ../Test_Case/TC_Login.robot
Resource    ../Test_Case/TC_OpenSauceDemoWeb.robot
Resource    ../Test_Case/TC_ClickAddtoCart.robot
Resource    ../Test_Case/TC_CheckOut.robot


*** Test Cases ***
SauceDemo Check Out Items
    Open SauceDemo Web
    Login SauceDemo
    Add item to cart
    Check Out items