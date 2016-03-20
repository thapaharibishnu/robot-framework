*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER}  Chrome

*** Keywords ***
Start test
    Open browser  about:blank  ${BROWSER}

Stop test
    Close browser
