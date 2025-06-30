*** Settings ***
Resource   ../resources/pages/how-to-filter-list.resource

Suite Setup    Abrir o navegador na página ${URL}
Test Teardown  Digito "" no campo "Search for names..."

*** Variables ***
${URL}    https://www.w3schools.com/howto/howto_js_filter_lists.asp

*** Test Cases ***

Procurar por um nome válido em Filter List
    [Tags]    HOW TO PAGE
    Given estou na página w3schools em Filter List
    When digito "Adele" no campo "Search for names..."
    Then a lista deve exibir o nome "Adele"

Procurar por um nome inválido em Filter List
    [Tags]    HOW TO PAGE
    Given estou na página w3schools em Filter List
    When digito "Adeles" no campo "Search for names..."
    Then a lista deve estar vazia

Verificar 3 nomes válidos na lista em Filter List
    [Tags]    HOW TO PAGE
    Given estou na página w3schools em Filter List
    When visualizo a lista de nomes
    Then tres nomes validos devem estar listados

Procurar 3 nomes válidos na lista em Filter List
    [Tags]    HOW TO PAGE
    Given estou na página w3schools em Filter List
    When visualizo a lista de nomes
    Then tres nomes validos devem ser encontrados