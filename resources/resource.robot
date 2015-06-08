*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           Selenium2Library

*** Variables ***
${SERVER}         amazon.com
${BROWSER}        Firefox
${DELAY}          0
${PAGE URL}      http://${SERVER}/

*** Keywords ***
Open Browser To Page
    Open Browser    ${PAGE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Page Should Be Open

Page Should Be Open
    Title Should Be    Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more
