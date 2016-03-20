*** Settings ***
Resource  PageObjects/GooglePOM.robot

*** Variables ***

*** Keywords ***
Search for RF
    GooglePOM.Load
    GooglePOM.Wait Until Page Loaded
    GooglePOM.Search for RF
    GooglePOM.Verify Search Result
