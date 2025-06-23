*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        CommosResource.resource
Resource    ../Steps/HU01_Autenticar_Usuario_Resource.resource
*** Keywords ***
#DADO
Dado que o usuário acessa o site
    Validar Que Estou Na Pagina    ${URL_Pagina_Pagina_Inicial}
#QUANDO 
Quando ele clica na aba "Cursos" no menu de navegação
    Clicar aba Cursos
#ENTÃO
Então o sistema deve exibir uma grade com os cards de todos os cursos disponíveis para compra ou inscrição
    validar se grade com os cards de cursos existe
    Close Browser
    
    


Clicar aba Cursos
    Wait Until Element Is Visible    ${Menu_Cursos}
    Click Element    ${Menu_Cursos}
validar se grade com os cards de cursos existe
    Sleep    2s
    Page Should Contain Element    ${Cursos_Grade_de_Cursos_Disponiveis} 

