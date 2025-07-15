*** Settings ***
Library     Browser
Resource    ../locators/how-to-page-locators.resource
Resource    ../utils/open-browser.resource


*** Variables ***
${PAGE_MAIN_HEADER}     How TO - CSS/JS Modal
${MODAL_BOX_HEADER}     Modal Header
${MODAL_BOX_CONTENT}    Hello World!
${MODAL_BOX_FOOTER}     Modal Footer


*** Keywords ***
Estou na página w3schools em Modal Boxes
    Get Text    ${HOW_TO_LOCATORS.HEADER}    ==    ${PAGE_MAIN_HEADER}

Clico no em "Open Modal"
    Click    ${HOW_TO_LOCATORS.MAIN_OPEN_MODAL_BUTTON}

O modal deve ser exibido
    Get Text    ${HOW_TO_LOCATORS.MODAL_BOXES_MODAL_HEADER}    ==    ${MODAL_BOX_HEADER}
    Get Text    ${HOW_TO_LOCATORS.MODAL_BOXES_MODAL_CONTENT}    ==    ${MODAL_BOX_CONTENT}
    Get Text    ${HOW_TO_LOCATORS.MODAL_BOXES_MODAL_FOOTER}    ==    ${MODAL_BOX_FOOTER}

Clico em "Close modal"
    Wait For Elements State    ${HOW_TO_LOCATORS.MAIN_CLOSE_MODAL_BUTTON}    stable
    Click    ${HOW_TO_LOCATORS.MAIN_CLOSE_MODAL_BUTTON}

O modal deve ser fechado
    Wait For Elements State    ${HOW_TO_LOCATORS.MAIN_CLOSE_MODAL_BUTTON}    hidden
