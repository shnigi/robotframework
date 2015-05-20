*** Settings ***
Documentation     A test suite to insert data to database
...
Resource          resource.robot

*** Variables ***
${PAGE}  http://localhost/~shnigi/phpverkkokurssi/

*** Test Cases ***
Insert Jeep to database
  Open Browser To Page
  Page Should Be Open
  Click Link  lisaa.php
  Input Text  merkki  Jeep Cherokee
  Input Text  rekisterinumero  ABF-234
  Input Text  tilavuus  2.0
  Input Text  valmistusvuosi  2007
  Click Button  lisaa
  Click Button  tallenna
  Close Browser

*** Keywords ***
