*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Library           libs/utils/myutils.py
#Resource          resources/common.robot
Resource          resources/settings.robot


*** Keywords ***
Call A Library Keyword
    Lib Keyword    Hello Robot


*** Test Cases ***

Test Python Lib
    Log                     'Testing Python Lib'
    Call A Library Keyword

