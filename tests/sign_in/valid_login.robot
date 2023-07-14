*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
#Resource          resources/common.robot

*** Test Cases ***

#Valid Login
#    Open Browser To Login Page
#    Input Username    demo
#    Input Password    mode
#    Submit Credentials
#    Welcome Page Should Be Open
#    [Teardown]    Close Browser

Normal Error
    Fail    This is a rather boring example...

HTML Error
    ${number} =    Get Number
    Should Be Equal    ${number}    42    *HTML* Number is not my <b>MAGIC</b> number.