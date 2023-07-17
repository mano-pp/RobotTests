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
${LOGOUT TEXT}    Logging out

*** Keyword ***
Open Browser To Logout Page
    Open Browser    ${LOGOUT URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Logout Page Should Be Open

Logout Page Should Be Open
    Wait Until Location Contains    ${KC SERVER}
    Page Should Contain             ${LOGOUT TEXT} 

Summary Page Should Be Open
    Wait Until Location Contains    ${SERVER}
    #Title Should Be                ${LOGIN TITLE}

*** Test Cases ***
Do Logout
    Open Browser To Logout Page
    Click Element   //input[@name="confirmLogout"]


