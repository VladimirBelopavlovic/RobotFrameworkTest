*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${CartBtnLocator}  xpath://*[@id="main"]/ul/li[1]/a[2]
${ItemInCartText}  1 item
${CheckoutPageLocator}  xpath://*[@id="site-navigation"]/div[1]/ul/li[3]/a
@{BillingLocators}  xpath://*[@id="billing_first_name"]  xpath://*[@id="billing_last_name"]  xpath://*[@id="billing_address_1"]  xpath://*[@id="billing_city"]  xpath://*[@id="billing_postcode"]  xpath://*[@id="billing_phone"]  xpath://*[@id="billing_email"]
@{BillingInfo}  Vladimir  Belopavlovic  Stojana Protica 45  Belgrade  11000  0603322082  vbelopavlovic@gmail.com

${CouponFieldLocator}  xpath://*[@id="post-8"]/div/div/div[3]/div/a
${CouponTextLocator}  xpath://*[@id="coupon_code"]
${CouponText}  ssqa100
${ClickCouponBtnLocator}  xpath://*[@id="post-8"]/div/div/form[2]/p[3]/button

${PlaceOrderLocator}  xpath://*[@id="place_order"]
${ConfirmOrderText}  Order received

*** Keywords ***
Add Item To Cart
    Click Element  ${CartBtnLocator}
    Sleep  3 seconds
    Page Should Contain  ${ItemInCartText}
Go To Checkout Page
    Click Element  ${CheckoutPageLocator}
    Sleep  2 seconds
Fill Billing Details
    Input Text  ${BillingLocators}[0]   ${BillingInfo}[0]
    Input Text  ${BillingLocators}[1]   ${BillingInfo}[1]
    Input Text  ${BillingLocators}[2]   ${BillingInfo}[2]
    Input Text  ${BillingLocators}[3]   ${BillingInfo}[3]
    Input Text  ${BillingLocators}[4]   ${BillingInfo}[4]
    Input Text  ${BillingLocators}[5]   ${BillingInfo}[5]
    Input Text  ${BillingLocators}[6]   ${BillingInfo}[6]
    Sleep  2 seconds
Add Coupon
    Click Element  ${CouponFieldLocator}
    Sleep  2 seconds
    Input Text  ${CouponTextLocator}        ${CouponText}
    Click Element  ${ClickCouponBtnLocator}
    Sleep  2 seconds
Place Order
    Click Element  ${PlaceOrderLocator}
    Sleep  10 seconds
    Page Should Contain  ${ConfirmOrderText}