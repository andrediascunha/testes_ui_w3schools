*** Settings ***
Library     Browser
Library     String
Library    Collections
Resource    ../utils/open-browser.resource
Variables   ../locators/home-page-locators.yaml
Variables   ../locators/how-to-page-locators.yaml
Variables   ../locators/html-page-locators.yaml

*** Variables ***
${HOME_PAGE_HEADER}        Learn to Code

&{MAP_LOCATORS}
# -- MENU PRINCIPAL
...    HOW TO=${HOME_PAGE_LOCATORS.GO_TO_HOW_TO}
...    HTML=${HTML_LOCATORS.GO_TO_HTML}
# -- OPÇÕES DA BARRA LATERAL EM HOW TO
...    Modal Boxes=${HOW_TO_LOCATORS.MODAL_BOXES_OPTION}
...    Filter List=${HOW_TO_LOCATORS.FILTER_LIST_OPTION}
# -- OPÇÕES DA BARRA LATERAL EM HTML
...    HTML Forms=${HTML_LOCATORS.HTML_FORMS_OPTION}
    

*** Keywords ***
Estou na home page do site w3schools
    Get Text    ${HOME_PAGE_LOCATORS.HEADER}  ==  ${HOME_PAGE_HEADER}

Clico em    
    [Arguments]    ${LOCATOR}
    ${LOCATOR}=    Get From Dictionary    ${MAP_LOCATORS}    ${LOCATOR}
    Click    ${LOCATOR}

Uma barra letral com a opção ${OPTION} deve ser apresentada
    ${OPTION}=    Replace String    ${OPTION}    "    ${EMPTY}
    ${LOCATOR}=    Get From Dictionary    ${MAP_LOCATORS}    ${OPTION}
    Wait For Elements State    ${LOCATOR}    visible

O cabecalho da pagina deve ser
    [Arguments]    ${CABECALHO}
    ${MAP_LOCATORS}=    Create Dictionary
    ...    HTML Forms=${HTML_LOCATORS.HEADER}
    ...    How TO - CSS/JS Modal=${HOW_TO_LOCATORS.HEADER}
    ...    How TO - Filter/Search List=${HOW_TO_LOCATORS.HEADER}
    
    ${LOCATOR}=    Get From Dictionary    ${MAP_LOCATORS}    ${CABECALHO}
    Get Text   ${LOCATOR}    ==    ${CABECALHO}


