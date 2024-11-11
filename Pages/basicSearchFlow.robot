*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${marsAir_header}                             //a[text()=" MarsAir"]
${welcome_header}                             //h2[text()="Welcome to MarsAir!"]

${departing_label}                            //label[text()="Departing"]
${departing_selectBox}                        //select[@id="departing"]
${deapart_july}                               //select[@id="departing"]/option[text()="July"]

${returning_label}                            //label[text()="Returning"]
${returning_selectBox}                        //select[@id="returning"]
${return_dec2yearsfromnow}                    //select[@id="returning"]/option[text()="December (two years from now)"]
${return_julynextyear}                        //select[@id="returning"]/option[text()="July (next year)"]
${return_july2yearsfromnow}                   //select[@id="returning"]/option[text()="July (two years from now)"]

${search_button}                              //input[@type="submit" and @value="Search"]
${search_result_header}                       //h2[text()="Search Results"]
${seats_available}                            //p[text()="Seats available!"]
${seats_unavailable}                          //p[text()="Sorry, there are no more seats available."]

${back_hyperlink}                             //a[text()=" Back"]

*** Keywords ***
User search for flights to Mars that returns more than next two years from now    
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
    Element Should Be Visible        ${seats_available}
    Click Element                    ${back_hyperlink}
    Wait Until Element Is Visible    ${marsAir_header}    5s

User search for flights to Mars that returns on the next year
    Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${deapart_july}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_julynextyear}
    Element Should Be Enabled        ${search_button} 
    Click Button                     ${search_button}   
    
    Wait Until Element Is Visible    ${search_result_header}
    Element Should Be Visible        ${seats_unavailable}
    Click Element                    ${back_hyperlink}
    Wait Until Element Is Visible    ${marsAir_header}    5s

User search for flights to Mars that returns for for the next two years from now
    Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${deapart_july}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_july2yearsfromnow}
    Element Should Be Enabled        ${search_button} 
    Click Button                     ${search_button}   
    
    Wait Until Element Is Visible    ${search_result_header}
    Element Should Be Visible        ${seats_unavailable}
    Click Element                    ${back_hyperlink}
    Wait Until Element Is Visible    ${marsAir_header}    5s
