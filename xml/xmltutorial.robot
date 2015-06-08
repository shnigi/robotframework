*** Settings ***
Library           XML

*** Variables ***
${XmlFile}        lol.xml

*** Test Cases ***
Parse-Xml-Test
    ${root}=    Parse XML    ${XmlFile}
    Should Be Equal    ${root.tag}    example
    ${first} 	Get Element	 ${root}	first
    Should Be Equal 	${first.text} 	text
