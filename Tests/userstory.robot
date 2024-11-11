*** Settings ***
Library    SeleniumLibrary
Resource    ../config/Resource.robot


Test Setup    Open Browser    https://marsair.recruiting.thoughtworks.net/YeeShengJie   Chrome           
Test Teardown    Close All Browsers 


*** Test Cases ***
 User search for flights to Mars
   Maximize Browser Window
   User search for flights to Mars that returns more than next two years from now    
   User search for flights to Mars that returns on the next year
   User search for flights to Mars that returns for for the next two years from now

Promotional Codes
   Maximize Browser Window
   User enter valid promotion code that gives discount
   User enter invalid promotion code



Link to Home Page
   Maximize Browser Window
   Link to Home Page by clicking MarsAir logo
   # Link to Home Page by clicking “Book a ticket to the red planet now!” ## Error ##


Invalid Return Dates   
   Maximize Browser Window
   User search for flights to Mars that return date is less than 1 year from the departure
   # User search for flights to Mars that has same departing and returning date    ## Error ##
    