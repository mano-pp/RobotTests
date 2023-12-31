*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Library           SeleniumLibrary    timeout=10
#Resource          resources/common.robot



*** Variables ***
${SERVER}         https://www.ecgvue.site/
${KC SERVER}      https://www.probeplus.site/
${BROWSER}        Edge
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN TITLE}    Sign in to ecgvue
${LOGIN URL}      http://${SERVER}/
${LOGOUT URL}     https://www.probeplus.site/realms/ecgvue/protocol/openid-connect/logout

*** Keyword ***
Open Browser To Login Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Wait Until Location Contains    ${KC SERVER}
    Title Should Be                 ${LOGIN TITLE}

Summary Page Should Be Open
    Wait Until Location Contains    ${SERVER}
    #Title Should Be                 ${LOGIN TITLE}

*** Test Cases ***

Valid login
    Open Browser To Login Page
    Input Text      //input[@name="username"]    rihaz@probeplus.in
    Input Text      //input[@name="password"]    deepak123
    Click Element   //input[@name="login"]


