*** Settings ***
Library    SeleniumLibrary
Library    ../config/PromoCodeLibrary.py
Resource    ../Pages/basicSearchFlow.robot

*** Variables ***
${promoCode_label}                         //label[text()="Promotional Code"]
${promoCode_field}                         //input[@id="promotional_code"]   
${promoCode_10PercentDiscount}
${DISCOUNT_DIGIT}    3
    

*** Keywords ***
User enter valid promotion code that gives discount
    
    # Generate Random Promotional Code

    # Ensure the discount digit is passed as an integer
    ${DISCOUNT_DIGIT_INT}=    Convert To Integer    ${DISCOUNT_DIGIT}

     # Generate a random promo code using the discount digit
    ${promo_code}=    Generate Promotional Code    ${DISCOUNT_DIGIT_INT}
    Log To Console     Generated promotional code: ${promo_code}
    
   #  Extract discount percentage from the generated promo code
   #  ${discount_percentage}=    Get Discount Percentage    ${promo_code}

    Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${depart_july}
    Element Should Be Visible        ${returning_label}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_dec2yearsfromnow}
    Element Should Be Visible        ${promoCode_label}
    Element Should Be Visible        ${promoCode_field}
    Input Text                       ${promoCode_field}    ${promo_code}    
    Click Button                     ${search_button}
    
    Wait Until Element Is Visible    ${search_result_header}
    Wait Until Element Is Visible      //tt[contains(text(), '${promo_code}')]   timeout=10s  # want to validate the sentence but seem unsure of which promo code can be used for modulus 10
       #xpath=//p[@class="promo_code" and contains(text(), 'Promotional code') and contains(text(), '${promo_code}') and contains(text(), '${discount_percentage}% discount')]
    Click Element                    ${marsAir_header}
    Wait Until Element Is Visible    ${welcome_header}


# Get Discount Percentage
#     [Arguments]    ${promo_code}
#     # Extract the first digit (discount indicator) from the promo code
#     ${first_digit}=    Get First Digit From Promo Code    ${promo_code}
#     Log To Console    First digit: ${first_digit}
#     ${discount_percentage}=    Evaluate    int(${first_digit}) * 10    # Convert to percentage
#     RETURN    ${discount_percentage}
    
# Get First Digit From Promo Code
#     [Arguments]    ${promo_code}
#     ${match}=    Evaluate    re.search(r'\d', "${promo_code}")    modules=re
#     Run Keyword If    '${match}' == 'None'    Fail    No digits found in promo code
#     ${first_digit}=    Evaluate    ${match}.group()    # Extract the matched digit  
#     RETURN    ${first_digit}

User enter invalid promotion code
   Wait Until Element Is Visible    ${marsAir_header}    5s
    Wait Until Element Is Visible    ${welcome_header}
    Element Should Be Visible        ${departing_label}
    Click Element                    ${departing_selectBox}
    Click Element                    ${depart_july}
    Element Should Be Visible        ${returning_label}
    Click Element                    ${returning_selectBox}
    Click Element                    ${return_dec2yearsfromnow}
    Element Should Be Visible        ${promoCode_label}
    Element Should Be Visible        ${promoCode_field}
    Input Text                       ${promoCode_field}    1234567890
    Click Button                     ${search_button}
    
    Wait Until Element Is Visible    ${search_result_header}
    Click Element                    ${marsAir_header}
    Wait Until Element Is Visible    ${welcome_header}

