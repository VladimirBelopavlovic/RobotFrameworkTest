*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SearchFieldLocator}  xpath://*[@id="woocommerce-product-search-field-0"]
${SearchFieldText}  polo
${KeyBtn}  ENTER
${SearchKeyword}  Polo

${AddFirstItemToCart}  xpath://*[@id="main"]/ul/li[1]/a[2]
${CartItem}  1 item


*** Keywords ***
Input Search Text
    Input Text  ${SearchFieldLocator}       ${SearchFieldText}
    Press Keys  ${SearchFieldLocator}       ${KeyBtn}

Check Search
    Page Should Contain  ${SearchKeyword}

Add One Item To Cart
    Click Element  ${AddFirstItemToCart}

Check For Item In Cart
    Page Should Contain     ${CartItem}