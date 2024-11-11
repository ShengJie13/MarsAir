*** Settings ***
Library    SeleniumLibrary
Resource    ../config/Resource.robot


Test Setup    Open Browser    https://marsair.recruiting.thoughtworks.net/YeeShengJie   Chrome           
Test Teardown    Close All Browsers 


*** Test Cases ***
User search for flights to Mars

# UserStory 1: Basic Search flow
#     As a MarsAir Sales Director (Mark)
#     I want potential customers to be able to search for flights to Mars
#     So that they see what trips are available

#     Acceptance criteria
#     There should be ‘departure’ and ‘return’ fields on a search form.
#     Flights leave every six months, in July and December, both ways.
#     Trips for the next two years should be searchable.
#     If there are seats, display “Seats available! Call 0800 MARSAIR to book!”
#     If there are no seats, display “Sorry, there are no more seats available.”

   Maximize Browser Window
   User search for flights to Mars that returns more than next two years from now    
   User search for flights to Mars that returns on the next year
   User search for flights to Mars that returns for for the next two years from now
