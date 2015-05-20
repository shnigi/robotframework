*** Settings ***
Library  Selenium2Library
Suite Setup  Go to homepage
Suite Teardown  Close All Browsers

*** Variables ***
${HOMEPAGE}  http://www.google.fi
${BROWSER}  ff

*** Test Cases ***
Google "Houston, everything's cool." and find houston-inc
    Google and check results  Houston, everything's cool  www.houston-inc.com

*** Keywords ***
Google and check results
  [Arguments]  ${searchkey}  ${result}
  Input Text  id=lst-ib  ${searchkey}
  Click Button  value=Google-haku
  Wait Until Page Contains  ${result}

Go to homepage
  Open Browser  ${HOMEPAGE}  ${BROWSER}
