*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    open browser    https://hotel-booking-website-1.onrender.com/   chrome
    click link   xpath://a[normalize-space()='Login']
    ${"email_txt"}   set variable    id:email
    Element Should Be Visible   ${"email_txt"}
    Element Should Be Enabled   ${"email_txt"}
    input text  ${"email_txt"}  admin@abc.com
    input text  id:pwd  12345
    click element   xpath://button[@value='Submit']
    title should be     Upload
    close browser

*** Keywords ***


