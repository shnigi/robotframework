*** Settings ***
Resource  ${EXECDIR}/resources/resource.robot
Resource  ${EXECDIR}/pages/amazon.robot
Suite Setup  Open Browser To Page
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***
User must be able to open amazon.com and search laptop
  [Tags]  Smoke
  [Documentation]  This testcase opens amazon.com and searches for laptop
  Given Page Should Be Open
  Then user types in laptop to searchbar
  And press search
  When laptops appear and user can see them

*** Keywords ***
user types in laptop to searchbar
  assert page user types in laptop to searchbar

press search
  assert page press search

laptops appear and user can see them
  assert page contains laptop
