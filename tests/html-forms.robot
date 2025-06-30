*** Settings ***
Resource   ../resources/pages/html-forms.resource

Suite Setup     Abrir o navegador na página ${URL}
Suite Teardown  Close Browser    ALL

*** Variables ***
${URL}     https://www.w3schools.com/html/html_forms.asp

*** Test Cases ***
Validar "Try it Yourself" em HTML Forms
    [Tags]    HTML PAGE
    Given estou na página w3schools em HTML Forms
    When clico em     Try it Yourself
    Then uma nova aba deve se abrir contendo uma div para edição e outra para execução HTML
    When digito o nome "Andre" no campo "First name:"
    And digito o sobrenome "Cunha" no campo "Last name"
    And clico em     Submit
    Then o formulário deve ser submetido com sucesso