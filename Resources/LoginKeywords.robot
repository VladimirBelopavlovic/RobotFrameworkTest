*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${GoToMyAccountPage}  xpath://*[@id="site-navigation"]/div[1]/ul/li[4]/a

${UsernameForInvalidPassLocator}  xpath://*[@id="username"]
${UsernameForInvalidPass}  daszjkipdsada@gmail.com
${PasswordForInvalidPassLocator}  xpath://*[@id="password"]
${PasswordForInvalidPass}  sajdwqdbsg
${ClickLoginBtn}  xpath://*[@id="customer_login"]/div[1]/form/p[3]/button
${CheckForWrongPass}  The password you entered for the email address

${UsernameForInvalidUsernameLocator}  xpath://*[@id="username"]
${UsernameForInvalidUsername}  klsadhqwhd
${PasswordForInvalidPassLocator}  xpath://*[@id="password"]
${PasswordForInvalidPass}  ssadjsadsah
${CheckForWrongUsername}  If you are unsure of your username

${EnterUsernameWithoutPassLocator}  xpath://*[@id="username"]
${EnterUsernameWithoutPass}  klsadhqwhd
${CheckNoPass}  The password field is empty

${EnterPassWithoutUsernameLocator}  xpath://*[@id="password"]
${EnterPassWithoutUsername}  ssadjsadsah
${CheckNoUsername}  Username is required

${EnterValidUsernameLocator}  xpath://*[@id="username"]
${EnterValidUsername}  pmnpnccznm@gmail.com
${EnterValidPassLocator}  xpath://*[@id="password"]
${EnterValidPass}  Vl$d$123ccc!

${ConfirmLogin}  From your account dashboard you can view

*** Keywords ***
Go To My Account
    Click Element         ${GoToMyAccountPage}

Enter Credentials With Invalid Password
    Input Text        ${UsernameForInvalidPassLocator}      ${UsernameForInvalidPass}
    Input Text        ${PasswordForInvalidPassLocator}      ${PasswordForInvalidPass}

Click Login Button
    Click Element         ${ClickLoginBtn}

Detect Wrong Password
    Page Should Contain       ${CheckForWrongPass}

Enter Credentials With Invalid Username
    Input Text        ${UsernameForInvalidUsernameLocator}      ${UsernameForInvalidUsername}
    Input Text        ${PasswordForInvalidPassLocator}      ${PasswordForInvalidPass}

Detect Wrong Username
    Page Should Contain       ${CheckForWrongUsername}

Enter Only Username
    Input Text        ${EnterUsernameWithoutPassLocator}        ${EnterUsernameWithoutPass}

Detect No Password
    Page Should Contain       ${CheckNoPass}

Enter Only Password
    Input Text        ${EnterPassWithoutUsernameLocator}        ${EnterPassWithoutUsername}

Detect No Username
    Page Should Contain       ${CheckNoUsername}

Enter Right Credentials
    Input Text        ${EnterValidUsernameLocator}      ${EnterValidUsername}
    Input Text        ${EnterValidPassLocator}      ${EnterValidPass}

Confirm Loging
    Page Should Contain       ${ConfirmLogin}