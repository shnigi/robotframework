*** Settings ***

*** Variables ***

*** Keywords ***
assert page user types in laptop to searchbar
  input text  twotabsearchtextbox  Laptop

assert page press search
  click button  Go

assert page contains laptop
  page should contain link  //*[@id="result_0"]/div/div[2]/div[1]/a  
