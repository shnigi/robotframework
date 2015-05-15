*** Settings ***
Library  Selenium2Library

*** Variables ***
${PAGE}  http://www.amazon.com

*** Test Cases ***
User must be able to open amazon.com
  [Documentation]  Type in Laptop and search
  [Tags]  Smoke
  Open Browser  ${PAGE}  ff
  Input Text  twotabsearchtextbox  Laptop
  Click Button  Go
  Close Browser

*** Keywords ***
