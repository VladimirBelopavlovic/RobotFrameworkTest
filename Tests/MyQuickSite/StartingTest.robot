*** Settings ***
Documentation  First Tests on the Home Page
Resource  ../../Resources/QuickSiteComFunc.robot
Resource  ../../Resources/PageObjects/HomePage.robot

Test Setup  QuickSiteComFunc.Start TestCase
Test Teardown  QuickSiteComFunc.Finish TestCase


*** Variables ***
${BROWSER}  chrome


*** Test Cases ***
Search Function
    [Documentation]  First test case
    [Tags]  Functional

    HomePage.Input Search Text
    HomePage.Check Search


Adding to Cart
    [Documentation]  Adding items to the cart
    [Tags]  Functional

    HomePage.Add One Item To Cart
    Sleep  3 seconds
    HomePage.Check For Item In Cart
