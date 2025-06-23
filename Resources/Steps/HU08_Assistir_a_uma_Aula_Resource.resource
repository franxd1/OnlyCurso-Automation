*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        CommosResource.resource
Resource    ../Steps/HU01_Autenticar_Usuario_Resource.resource
*** Keywords ***
#DADO
Dado que o aluno está na página de visão geral de um curso 
    Wait Until Element Is Visible    ${Home_Meus_Cursos}
    Wait Until Element Is Visible    ${Curso_Completo_de_Desenvolvimento_Web}
    Wait Until Element Is Visible    ${Botão_Continuar_Curso_Completo_de_Desenvolvimento_Web}
    Click Element    ${Botão_Continuar_Curso_Completo_de_Desenvolvimento_Web}
    Validar Que Estou Na Pagina    https://only-cursos.vercel.app/moduloCurso/30

#QUANDO
Quando ele clica no botão "Assistir Aula" de uma Aula
    Wait Until Element Is Visible    ${Botao_Assistir_Aula_Curso_HTML_e_CSS_Essencial}    
     Click Element    ${Botao_Assistir_Aula_Curso_HTML_e_CSS_Essencial} 
#E
E visualiza a lista de aulas disponíveis 
    Page Should Contain Element    ${Container_de_Aulas_Curso_Completo_de_Desenvolvimento_Web}
#ENTÃO
Então o sistema deve direcioná-lo para a página da aula, exibindo o player de vídeo
    Validar Que Estou Na Pagina    https://only-cursos.vercel.app/playerVideo/30
    Page Should Contain Element    ${Player_video_HTML_e_CSS_Essencial}
    Close Browser
    
    