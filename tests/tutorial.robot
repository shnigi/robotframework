*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
User must sign in to check out
  [Documentation]  This is some basic info
  [Tags]  Smoke
  Open Browser  http://www.amazon.com  ff
  Close Browser

*** Keywords ***
