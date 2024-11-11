*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/basicSearchFlow.robot

*** Variables ***
${book_ticket}                                  //h3[text()="Book a ticket to the red planet now!"]
${deapart_select}                               //select[@id="departing"]/option[text()="Select..."]
${return_select}                                //select[@id="returning"]/option[text()="Select..."]


*** Keywords ***
Link to Home Page by clicking MarsAir logo
    Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${deapart_july}
    Element Should Be Visible        ${returning_label}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_dec2yearsfromnow}
    Element Should Be Enabled        ${search_button} 
    Click Button                     ${search_button}   
    
    Wait Until Element Is Visible    ${search_result_header}
    Click Element                    ${marsAir_header}
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${deapart_select}
    Element Should Be Visible        ${return_select}

Link to Home Page by clicking “Book a ticket to the red planet now!”
    Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${deapart_july}
    Element Should Be Visible        ${returning_label}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_dec2yearsfromnow}
    
    Click Element                    ${book_ticket}    # Error cannot click the statement    
    Element Should Be Visible        ${deapart_select}
    Element Should Be Visible        ${return_select}