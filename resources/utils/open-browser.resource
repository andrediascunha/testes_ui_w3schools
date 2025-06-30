*** Settings ***
Library   Browser

*** Variables ***
${BROWSER}            chromium
${HEADLESS}           ${false}

*** Keywords ***
Abrir o navegador na página ${URL}
    New Browser    browser=${BROWSER}
    ...            headless=${HEADLESS}

    New Context    

    New Page       url=${URL}    wait_until=domcontentloaded    #Usado wait_until=domcontentloaded pois os anúncios estão gerando lentidão ao carregar a página
    # New Page       url=${URL}    wait_until=load    #Caso realmente necessário esperar a carga total, a linha acima poderá ser comentada e essa descomentada