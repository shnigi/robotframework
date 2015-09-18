*** Test Cases ***
Example test case using template
    [Template]    Test System
    3    4    7    # Test Case 1
    45    55    100    # Test Case 2
    35    5    40    # Test Case 3
    5    5    10    # Test Case 4

*** Keywords ***
Test System
    [Arguments]    ${input_1}    ${input_2}    ${expected}
    ${result}=    Do something complicated    ${input_1}    ${input_2}
    Should Be True        ${result} == ${expected}

Do something complicated
    [Arguments]    ${input_1}    ${input_2}
    ${result}=    Evaluate    ${input_1}+${input_2}
    [Return]    ${result}
