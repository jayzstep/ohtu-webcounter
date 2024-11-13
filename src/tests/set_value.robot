*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Setting a value sets a value
    Go To  ${HOME_URL}
    Input Text  new_value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

Setting a non number value doesn't change value
    Go To  ${HOME_URL}
    Input Text  new_value  moi
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
    
