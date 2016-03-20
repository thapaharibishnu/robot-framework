*** Settings ***
Documentation  Google Page Objects Model
Library  Selenium2Library


*** Variables ***
${SEARCH_TERM}   robot framework

*** Keywords ***
Load
    Go To  http://www.google.com

Search for RF
    Enter Search Term
    Submit Search

Wait Until Page Loaded
    Wait for Search Bar

Verify Search Result
    Verify Search Results



Enter Search Term
    Input Text  name=q  ${SEARCH_TERM}

Submit Search
    Click Button  name=btnG
    wait until page contains element  id=hdtb-msb

Wait for Search Bar
    wait until page contains element  name=q

Verify Search Results
    page should contain link  Robot Framework