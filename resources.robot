*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${BROWSER}  Chrome
${URL}  http://www.google.com/

*** Keywords ***
Open Browser To Google
  Open Browser  ${URL}  ${BROWSER}
  Maximize Browser Window

Google Should Be Open
  Title Should Be    Google
