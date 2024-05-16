*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    open browser    https://hotel-booking-website-1.onrender.com/   chrome
    click link   xpath://a[normalize-space()='Login']
    input text  id:email    admin@abc.com
    input text  id:pwd  12345
    click element   xpath://button[@value='Submit']
    title should be     upload
    close browser

*** Keywords ***


