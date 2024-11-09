*** Settings ***
Library    SeleniumLibrary
Resource    ../config/Resource.robot


Test Setup    Open Browser    https://marsair.recruiting.thoughtworks.net/YeeShengJie   Chrome           
Test Teardown    Close All Browsers 


*** Test Cases ***
Test
   Maximize Browser Window
   Basic Search flow
