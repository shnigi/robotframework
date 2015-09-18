*** Settings ***
Library           XML

*** Variables ***
${XmlFile}    ${CURDIR}/example1.xml

*** Test Cases ***
Parse-Xml-example1
    ${root}=    Parse XML    ${XmlFile}
    Should Be Equal    ${root.tag}    TestCases
    ${testcase1}=    Get Element Text    ${root}    TestCase[@id='1']
    ${testcase2}=    Get Element Text    ${root}    TestCase[@id='2']
    ${testcase3}=    Get Element Text    ${root}    TestCase[@id='3']
    ${testcase4}=    Get Element Text    ${root}    TestCase[@id='4']
    ${testcase5}=    Get Element Text    ${root}    TestCase[@id='5']
    ${testcase6}=    Get Element Text    ${root}    TestCase[@id='6']

Get-Child-Elements-Test
    ${root}=    Parse XML    ${XmlFile}
    Should Be Equal    ${root.tag}    TestCases
    Get Child Elements    ${root}
    Length Should Be    ${root}    6

Get-Element-With-Attributes-Test
    ${root}=    Parse XML    ${XmlFile}
    Should Be Equal    ${root.tag}    TestCases
    ${TestCase2}    Get Element Text    ${root}    *[@id="2"]
    ${TestCase5}    Get Element Text    ${root}    *[@id="5"]
