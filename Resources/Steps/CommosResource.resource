*** Settings ***
Library        SeleniumLibrary
Library    JSONLibrary
Resource        ../variables/Credenciais.resource
Library    XML
Resource        ../variables/GlobalVariables.resource
*** Keywords ***
Abrir Navegador  
     Open Browser    ${LinkNavegador}    chrome
Abrir Navegador e logar no sistema
    Abrir Navegador
    logar no sistema
acessar login
    Wait Until Element Is Visible  ${BotaoEntrar}
    Set Focus To Element    ${BotaoEntrar}
    Click Element    ${BotaoEntrar}
logar no sistema
    acessar login
    preencher campo email    ${User_Email}
    preencher campo senha    ${User_Senha}
    Click Element    ${Login_Botao_Entrar}
    Validar Que Estou Na Pagina    https://only-cursos.vercel.app/aluno
    
preencher campo email  
    [Arguments]    ${Email}
    Set Focus To Element    ${Login_Input_Email}
    Input Text    ${Login_Input_Email}    ${Email}
preencher campo senha 
  [Arguments]  ${Senha}
    Set Focus To Element    ${Login_Input_Email}
    Input Text    ${Login_Input_Senha}    ${Senha}
    
Deslogar usuario
    Click Element    ${Home_Botao_Sair}

Validar Que Estou Na Pagina
    [Arguments]    ${url_da_pagina}
    Wait Until Keyword Succeeds    10s    1s    Location Should Be    ${url_da_pagina}

acessar tela Meus dados
    Wait Until Element Is Visible  ${Menu_Meus_Dados}
    Click Element    ${Menu_Meus_Dados}
Carregar Credenciais
    [Arguments]    ${perfil}    ${campo}
    ${json}=    Load Json From File    ${CAMINHO_JSON}
    ${usuario_dados}=    Get Value From Json    ${json}    ${perfil}
    ${resultado}=    Get Value From Json    ${usuario_dados}    ${campo}
    [Return]    ${resultado}
    