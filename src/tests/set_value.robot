*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Setting value once gives correct value
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa

Setting value multiple times works correclty
    Go To  ${HOME_URL}
    Input Text  value  20
    Click Button  Aseta
    Page Should Contain  nappia painettu 20 kertaa
    Input Text  value  30
    Click Button  Aseta
    Page Should Contain  nappia painettu 30 kertaa
    Input Text  value  5
    Click Button  Aseta
    Page Should Contain  nappia painettu 5 kertaa