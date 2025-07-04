*** Settings ***
Resource        ../resources/pages/home-page.resource

Suite Setup     Abrir o navegador na página ${URL}    #Abre inicialmente o navegador na página home para a Suite
Test Teardown   Go To       url=${URL}                #Retorna para página home ao final de cada teste
Suite Teardown  Close Browser    ALL
*** Variables ***
${URL}          https://www.w3schools.com

*** Test Cases ***
Ir para página Modal Boxes
    [Tags]    HOME PAGE
    Given estou na home page do site w3schools
    When clico em     HOW TO
    Then uma barra letral com a opção "Modal Boxes" deve ser apresentada
    When clico em    Modal Boxes
    Then o cabecalho da pagina deve ser    How TO - CSS/JS Modal

Ir para página Filter List
    [Tags]    HOME PAGE
    Given estou na home page do site w3schools
    When clico em    HOW TO
    Then uma barra letral com a opção "Filter List" deve ser apresentada
    When clico em    Filter List
    Then o cabecalho da pagina deve ser    How TO - Filter/Search List

Ir para página HTML Forms
    [Tags]    HOME PAGE
    Given estou na home page do site w3schools
    When clico em    HTML
    Then uma barra letral com a opção "HTML Forms" deve ser apresentada
    When clico em    HTML Forms
    Then o cabecalho da pagina deve ser    HTML Forms