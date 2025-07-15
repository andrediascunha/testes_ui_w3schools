*** Settings ***
Resource            ../resources/pages/how-to-modal-boxes.resource

Suite Setup         Abrir o navegador na página ${URL}
Suite Teardown      Close Browser    ALL


*** Variables ***
${URL}      https://www.w3schools.com/howto/howto_css_modals.asp


*** Test Cases ***
Validar abertura e fechamento de modal em Modal Boxes
    [Tags]    how to page
    Given estou na página w3schools em Modal Boxes
    When clico no em "Open Modal"
    Then o modal deve ser exibido
    When clico em "Close modal"
    Then o modal deve ser fechado
