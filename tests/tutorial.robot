*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
User must sign in to check out
  [Documentation]  This is a comment
  [Tags]  Smoke
  Open Browser  http://www.amazon.com  ff
  Input Text  twotabsearchtextbox  Laptop
  Click Button  Go
  Close Browser

*** Keywords ***
