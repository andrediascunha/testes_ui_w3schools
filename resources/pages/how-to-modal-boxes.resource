*** Settings ***
Library     Browser
Resource    ../locators/how-to-page-locators.resource
Resource    ../utils/open-browser.resource


*** Variables ***
${PAGE_MAIN_HEADER}     How TO - CSS/JS Modal


*** Keywords ***
Estou na página w3schools em Modal Boxes
    Get Text    ${HOW_TO_LOCATORS.HEADER}    ==    ${PAGE_MAIN_HEADER}

Clico no em "Open Modal"
    Click    ${HOW_TO_LOCATORS.MAIN_OPEN_MODAL_BUTTON}

O modal deve ser exibido com opção para fechamento
    Wait For Elements State    ${HOW_TO_LOCATORS.MAIN_CLOSE_MODAL_BUTTON}    stable

Clico em "Close modal"
    Click    ${HOW_TO_LOCATORS.MAIN_CLOSE_MODAL_BUTTON}

O modal deve ser fechado
    Wait For Elements State    ${HOW_TO_LOCATORS.MAIN_CLOSE_MODAL_BUTTON}    hidden
