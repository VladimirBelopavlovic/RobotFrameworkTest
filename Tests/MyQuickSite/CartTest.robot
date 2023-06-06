*** Settings ***
Documentation  Addint to Cart and Buying item
Resource  ../../Resources/QuickSiteComFunc.robot
Resource  ../../Resources/PageObjects/CartPage.robot


Test Setup  QuickSiteComFunc.Start TestCase
Test Teardown  QuickSiteComFunc.Finish TestCase

*** Variables ***
${BROWSER}  chrome


*** Test Cases ***
Buying Item
    [Documentation]  Buying items and adding them to the cart
    [Tags]  Functional

    CartPage.Add Item To Cart
    CartPage.Go To Checkout Page
    CartPage.Fill Billing Details
    CartPage.Add Coupon
    CartPage.Place Order
