*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/basicSearchFlow.robot

*** Variables ***
${return_dec}                            //select[@id="returning"]/option[text()="December"]
${schedule_impossible}                   //p[text()="Unfortunately, this schedule is not possible. Please try again."]
${return_july}                           //select[@id="returning"]/option[text()="July"]

*** Keywords ***
User search for flights to Mars that return date is less than 1 year from the departure
    Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${deapart_july}
    Element Should Be Visible        ${returning_label}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_dec} 
    Element Should Be Enabled        ${search_button} 
    Click Button                     ${search_button}   
    
    Wait Until Element Is Visible    ${search_result_header}
    Element Should Be Visible        ${schedule_impossible}
    Click Element                    ${back_hyperlink}
    Wait Until Element Is Visible    ${marsAir_header}    5s

User search for flights to Mars that has same departing and returning date
    Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${deapart_july}
    Element Should Be Visible        ${returning_label}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_july}  
    Element Should Be Enabled        ${search_button} 
    Click Button                     ${search_button}   
    
    Wait Until Element Is Visible    ${search_result_header}
    Element Should Be Visible        ${schedule_impossible}        # wrong message displayed on the website instead of this
    Click Element                    ${back_hyperlink}
    Wait Until Element Is Visible    ${marsAir_header}    5s
    