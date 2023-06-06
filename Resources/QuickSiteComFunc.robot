*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${website}  http://localhost:8889/quicksite2/

*** Keywords ***
Start TestCase
    Open Browser        ${website}       ${BROWSER}

Finish TestCase
    Close Browser