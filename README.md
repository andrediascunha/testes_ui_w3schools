# Design pattern:
Para este projeto, foi escolhido POM (Page Object Model) como pattern devido à grande quantidade de páginas que o site W3Schools possui.
Dividindo a estrutura do projeto em três partes principais: a escrita dos testes (utilizando Gherkin), os recursos (responsáveis pela lógica de execução) e os locators (que localizam os elementos nas páginas).
Essa organização torna os testes mais estruturados, granulares, fáceis de entender e de manter. Vale destacar também que, como a página não possui IDs em muitos campos, a abordagem de utilizar um dicionário para os locators facilita a manutenção caso os elementos sejam alterados.

# Ferramentas
Robot Framework + Playwrigth (library Browser): Conforme escopo, era um desejo de uso do Robot para o desafio.
Quanto a Playwirght, apesar de possuir dependência do Node.js, ela apresenta ganho de performance na execução em relação a outras libraries populares como a Selenium, devido a forma que se comunica com os navegadores.
Também já possui waits intrinsecos às suas keywords, possibilitando a escrita dos testes com menos linhas de código.
Dado também às multiplas páginas que o site possui, esse ganho de performance será mais notável a medida que a quantidade de testes aumentar.

# Dependencias:
- NodeJs 22.14.0 ou superior
  - https://nodejs.org/en/download
- Python 3.13.3 ou superior
  - https://www.python.org/downloads/
- Bibliotecas python em requirements.txt
  - robotframework>=7.3
  - robotframework-browser>=19.4.0
  - robotframework-faker>=5.0.0
  - PyYAML>=6.0.2
- Para instalar as bibliotecas python:
  - - pip install --upgrade pip
  - - pip install -r requirements.txt

# Como executar a suite de testes
- Necessário ter as dependências instaladas
- Abrir prompt de comando no diretório principal e digitar:
  - robot -d results/ -v BROWSER:chromium  -v HEADLESS:true tests/*.robot
  - Esse comando executará os testes com chromium driver (navegadores Chrome e Edge) e colocará os resultados no diretório results/
  - Para os navegadores Firefox ou Safari, basta substituir -v BROWSER:chromium por -v BROWSER:firefox ou -v BROWSER:webkit
  - Caso queira ver a iteração dos testes, basta subistituir -v HEADLESS:true, por -v HEADLESS:false

# Acessar os resultados
- os resultados estarão na pasta results/ definida conforme comando de execução
  - o arquivo log.html trará o resultado dos testes assim como o log de todos os steps executados
  - o arquivo report.html trará apenas o resultado final do testes
- Interpretação dos resultados
  - Na tabela de reultados é possível verificar quantos testes foram executados e desses, quantos passarm, reprovaram ou saltaram.
  - Também é possível verificar os resultados por TAGS, onde as TAGS foram usadas para mostrar a qual contexto o teste pertence: HOME PAGE, HOW TO PAGE, HTML PAGE

# Rodando em docker
- Em desenvolvimento
