*** Settings ***
Library           OperatingSystem

*** Variables ***

*** Test Cases ***
Example operating system test case
  Create File	${CURDIR}/example.txt	   Hello, world!
  File Should Exist	${CURDIR}/example.txt
  Copy File	${CURDIR}/example.txt	   ${CURDIR}/file.txt

*** Keywords ***
