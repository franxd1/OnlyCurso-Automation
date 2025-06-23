*** Settings ***
Library        SeleniumLibrary
Library    XML
Resource        ../variables/GlobalVariables.resource
Resource        CommosResource.resource
Resource    ../Steps/HU01_Autenticar_Usuario_Resource.resource
*** Keywords ***


#DADO
Dado que o aluno está assistindo à "Aula 1" de um curso    
    Wait Until Element Is Visible    ${Home_Meus_Cursos}
    Wait Until Element Is Visible    ${Curso_Completo_de_Desenvolvimento_Web}
    Wait Until Element Is Visible    ${Botão_Continuar_Curso_Completo_de_Desenvolvimento_Web}
    Click Element    ${Botão_Continuar_Curso_Completo_de_Desenvolvimento_Web}
    Validar Que Estou Na Pagina    https://only-cursos.vercel.app/moduloCurso/30
    Sleep    2S
    Click Element    ${Botao_Assistir_Aula_Curso_HTML_e_CSS_Essencial} 
    Sleep    10S

    
#QUANDO
Quando ele clica no botão "Próximo"
     Click Element    ${Botao_Proxima_Aula}

#E
E o player de vídeo está disponível
    Validar Que Estou Na Pagina    https://only-cursos.vercel.app/playerVideo/30
    Page Should Contain Element    ${Player_video_HTML_e_CSS_Essencial}
    
#ENTÃO
Então o sistema deve carregar o conteúdo da "Aula 2" no player de vídeo
    Sleep    5s    
     Wait Until Element Is Visible    xpath=//iframe    timeout=10s
    ${src}=    SeleniumLibrary.Get Element Attribute    xpath=//iframe    src
    Should Contain    ${src}    PkZNo7MFNFg
    Close Browser

    

