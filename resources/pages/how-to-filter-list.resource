*** Settings ***
Library    Browser
Library    String
Resource   ../locators/how-to-page-locators.resource
Resource   ../utils/open-browser.resource
*** Variables ***
${PAGE_MAIN_HEADER}     How TO - Filter/Search List
@{NAMES_LIST}=    Adele    Billy    Cindy

*** Keywords ***
Estou na página w3schools em Filter List
    Get Text    ${HOW_TO_LOCATORS.HEADER}  ==  ${PAGE_MAIN_HEADER}

Digito ${NAME} no campo "Search for names..."
    ${NAME}=    Replace String    ${NAME}    "    ${EMPTY}
    Type Text    ${HOW_TO_LOCATORS.FILTER_LIST_SEARCH}    ${NAME}
    Sleep    2

a lista deve exibir o nome ${NAME}
    ${NAME}=    Replace String    ${NAME}    "    ${EMPTY}
    ${LOCATOR}=    Set Variable    ${HOW_TO_LOCATORS.FILTER_LIST_RESULT_BY_NAME}
    ${LOCATOR}=    Replace String    ${LOCATOR}    name    ${NAME}
    Wait For Elements State    ${locator}    visible

a lista deve estar vazia
    Wait For Elements State    ${HOW_TO_LOCATORS.FILTER_LIST_RESULT}    hidden

visualizo a lista de nomes
    Wait For Elements State    ${HOW_TO_LOCATORS.FILTER_LIST_RESULT}    visible

Tres nomes validos devem estar listados
    FOR    ${NAME}    IN    @{NAMES_LIST}
        ${LOCATOR}=    Set Variable    ${HOW_TO_LOCATORS.FILTER_LIST_RESULT_BY_NAME}
        ${LOCATOR}=    Replace String    ${LOCATOR}    name    ${NAME}
        Wait For Elements State    ${locator}    visible
    END
    
Tres nomes validos devem ser encontrados
    FOR    ${NAME}    IN    @{NAMES_LIST}
        Digito ${NAME} no campo "Search for names..."
        a lista deve exibir o nome ${NAME}
    END