*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        CommosResource.resource
Resource    ../Steps/HU01_Autenticar_Usuario_Resource.resource
*** Keywords ***
#DADO
Dado que o usuário está na dashboard 
    logar no sistema
    Wait Until Element Is Visible    ${Home_Meus_Cursos}
    
#QUNDO
Quando ele clica no botão "Continuar" de um curso
    Wait Until Element Is Visible    ${Botão_Continuar_Curso_Completo_de_Desenvolvimento_Web}
    Click Element    ${Botão_Continuar_Curso_Completo_de_Desenvolvimento_Web}
#E
E visualiza seus cursos matriculados
    Wait Until Element Is Visible    ${Curso_Completo_de_Desenvolvimento_Web}
    
#ENTÃO
Então o sistema o direciona para a página de conteúdo daquele curso
     Validar Que Estou Na Pagina    https://only-cursos.vercel.app/moduloCurso/30
     Close Browser
     