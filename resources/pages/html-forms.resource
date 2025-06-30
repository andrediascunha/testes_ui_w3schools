*** Settings ***
Library    Browser
Library    String
Library    Collections
Variables    ../locators/html-page-locators.yaml
Resource     ../utils/open-browser.resource
*** Variables ***
${PAGE_MAIN_HEADER}     HTML Forms

&{MAP_LOCATORS}
...    Try it Yourself=${HTML_LOCATORS.GO_TO_TRY_IT_YOURSELF_1}
...    Submit=${HTML_LOCATORS.INPUT_SUBMIT}


*** Keywords ***

Estou na página w3schools em HTML Forms
    Get Text    ${HTML_LOCATORS.HEADER}  ==  ${PAGE_MAIN_HEADER}

Clico em    
    [Arguments]    ${LOCATOR}
    ${LOCATOR}=    Get From Dictionary    ${MAP_LOCATORS}    ${LOCATOR}
    Click    ${LOCATOR}
    

Uma nova aba deve se abrir contendo uma div para edição e outra para execução HTML
    Switch Page    NEW         #Ir para nova aba aberta
    Wait For Elements State    ${HTML_LOCATORS.DIV_TO_EDIT}    visible
    Wait For Elements State    ${HTML_LOCATORS.DIV_TO_EXECUTION}    visible

Digito o nome ${FIRST_NAME} no campo "First name:"
    ${FIRST_NAME}=    Replace String    ${FIRST_NAME}    "    ${EMPTY}
    Set Global Variable    ${FIRST_NAME}
    Fill Text    ${HTML_LOCATORS.INPUT_NAME}    ${FIRST_NAME}

Digito o sobrenome ${LAST_NAME} no campo "Last name"
    ${LAST_NAME}=    Replace String    ${LAST_NAME}    "    ${EMPTY}
    Set GLOBAL Variable    ${LAST_NAME}
    Fill Text    ${HTML_LOCATORS.INPUT_LAST_NAME}    ${LAST_NAME}
   
O formulário deve ser submetido com sucesso
    Wait For Elements State    ${HTML_LOCATORS.RESULT_SUBMIT_FORM}    visible
    ${TEXT_RESULT}=    Get Text    ${HTML_LOCATORS.RESULT_SUBMIT_FORM}
    Should Contain     ${TEXT_RESULT}    fname=${FIRST_NAME}&lname=${LAST_NAME}