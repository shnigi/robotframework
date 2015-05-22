*** Settings ***
Library  Selenium2Library
Suite Setup  Go to homepage
Suite Teardown  Close All Browsers

*** Variables ***
${HOMEPAGE}  https://www.yahoo.com/
${BROWSER}  ff

*** Test Cases ***
Find houston inc from yahoo
    Google and check results  houston-inc  www.houston-inc.com

*** Keywords ***
Google and check results
  [Arguments]  ${searchkey}  ${result}
  Input Text  name=p  ${searchkey}
  Click Button  id=search-submit
  Wait Until Page Contains  ${result}

Go to homepage
  Open Browser  ${HOMEPAGE}  ${BROWSER}
