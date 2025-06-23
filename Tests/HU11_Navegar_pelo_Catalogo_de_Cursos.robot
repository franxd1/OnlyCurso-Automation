*** Settings ***
Resource    ../Resources/Steps/HU11_Navegar_pelo_Catalogo_de_Cursos_Resource.resource
Suite Setup    Abrir Navegador e logar no sistema

*** Test Cases ***
Cenário 01: Visualizar o catálogo de cursos 
    Dado que o usuário acessa o site 
    Quando ele clica na aba "Cursos" no menu de navegação
    Então o sistema deve exibir uma grade com os cards de todos os cursos disponíveis para compra ou inscrição
