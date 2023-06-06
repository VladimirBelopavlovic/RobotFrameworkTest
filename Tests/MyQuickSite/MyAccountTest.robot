*** Settings ***
Documentation  Logging on Account
Resource  ../../Resources/QuickSiteComFunc.robot
Resource  ../../Resources/LoginKeywords.robot

Test Setup  QuickSiteComFunc.Start TestCase
Test Teardown  QuickSiteComFunc.Finish TestCase

*** Variables ***
${BROWSER}  chrome


*** Test Cases ***

Invalid Password
    [Documentation]  Logging with invalid password
    [Tags]  Non Functional

    LoginKeywords.Go To My Account
    LoginKeywords.Enter Credentials With Invalid Password
    LoginKeywords.Click Login Button
    LoginKeywords.Detect Wrong Password

Invalid Username
    [Documentation]  Logging with invalid username
    [Tags]  Non Functional

    LoginKeywords.Go To My Account
    LoginKeywords.Enter Credentials With Invalid Username
    LoginKeywords.Click Login Button
    LoginKeywords.Detect Wrong Username

No Password
    [Documentation]  Trying to login without password
    [Tags]  Non Functional

    LoginKeywords.Go To My Account
    LoginKeywords.Enter Only Username
    LoginKeywords.Click Login Button
    LoginKeywords.Detect No Password

No Username
    [Documentation]  Trying to login without username
    [Tags]  Non Functional

    LoginKeywords.Go To My Account
    LoginKeywords.Enter Only Password
    LoginKeywords.Click Login Button
    LoginKeywords.Detect No Username

Login on Site
    [Documentation]  Logging with right username and password
    [Tags]  Functional

    LoginKeywords.Go To My Account
    LoginKeywords.Enter Right Credentials
    LoginKeywords.Click Login Button
    LoginKeywords.Confirm Loging
