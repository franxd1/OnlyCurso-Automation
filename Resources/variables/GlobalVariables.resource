*** Settings ***

*** Variables ***
#URLS
${URL_Pagina_Pagina_Inicial}    https://only-cursos.vercel.app/aluno
#Credenciais
${CAMINHO_JSON}    ../User_credentials.json
${LinkNavegador}        https://only-cursos.vercel.app/

#Tela de apresentação 
${BotaoEntrar}    xpath=/html/body/div/nav/div[1]/ul/li[4]/a 
#Tela inicial 
${Home_Botao_Pagina_Inicial}    xpath=/html/body/div/div/nav/div/ul/li[1]/a
${Home_Meus_Cursos}       xpath=/html/body/div/main/section[2]/h2
${Home_Botao_Sair}        xpath=/html/body/div/div/nav/div/div[2]/button
${Home_Nome_do_Usuario}    xpath=/html/body/div/main/section[1]/div[2]/h1
${Home_Titulo_da_Lista_Meus_Cursos}    xpath=/html/body/div/main/section[2]/h2
#Meus Cursos- lista
${Curso_Completo_de_Desenvolvimento_Web}    xpath=/html/body/div/main/section[2]/div/div/h3 
${Botão_Continuar_Curso_Completo_de_Desenvolvimento_Web}    xpath=/html/body/div/main/section[2]/div/div/div[3]/button
${Container_de_Aulas_Curso_Completo_de_Desenvolvimento_Web}    xpath=//div[contains(@class, 'grid-cols-3')]
${Botao_Assistir_Aula_Curso_HTML_e_CSS_Essencial}    xpath=/html/body/div/div[2]/div/div/div/div[2]/button
${Player_video_HTML_e_CSS_Essencial}    xpath=/html/body/div/div
${Botao_Proxima_Aula}    xpath=/html/body/div/div[1]/div[2]/div/button[2]
#Tela de Login
${Login_Input_Email}    xpath=/html/body/div/div/form/div[1]/input
${Login_Input_Senha}    xpath=//*[@id="senha"]
${Login_Botao_Entrar}    xpath=/html/body/div/div/form/button
${Login_Mensagem_Credencias_invalidas}    xpath=/html/body/div/div/form/p
${Login_link_para_Cadastro}    xpath=/html/body/div/div/div/p[2]/a
${Login_link_para_Recupera_Senha}    xpath=/html/body/div/div/div/p[1]/a
#Menu
${Menu_Meus_Dados}    xpath=/html/body/div/div/nav/div/ul/li[4]/a/span[2]
${Menu_Cursos}    xpath=/html/body/div/div/nav/div/ul/li[2]/a/span[2]




#Tela Meus Dados 
${Meus_Dados_Campo_Profissao}     xpath=/html/body/div/main/div/div[2]/div[6]/div[2]/label
${Meus_Dados_Botao_editar_profissao}    xpath=/html/body/div/main/div/div[2]/div[6]/div[2]/button
${Meus_Dados_Profissao_atual}    xpath=/html/body/div/main/div/div[2]/div[6]/div[2]/p
${Meus_Dados_Input_Editar_profissao}    xpath=/html/body/div/div[2]/div/input
${Meus_Dados_Salvar_Edicao_de_profissao}    xpath=/html/body/div/div[2]/div/div/button[2]
${Meus_Dados_Identificdor_do_Campo_CPF}    xpath=/html/body/div/main/div/div[2]/div[5]/div[2]/label
${Meus_Dados__Campo_CPF_Inalteravel}    xpath=/html/body/div/main/div/div[2]/div[5]/div[2]/div/span
${Meus_Dados_Botao_Alterar_senha}    xpath=/html/body/div/main/div/div[2]/div[7]/button
${Meus_Dados_Input_Senha_Atual}    xpath=/html/body/div/div[2]/div/input[1]
${Meus_Dados_Input_Senha_Nova}    xpath=/html/body/div/div[2]/div/input[2]
${Meus_Dados_Botao_Salvar_Nova_Senha}    xpath=/html/body/div/div[2]/div/div/button[2]
${Meus_Dados_Mensagem_de_Confirmacao_Senha_atualizada}    xpath=/html/body/div/div[2]/div/div[1]

#Tela Cursos
${Cursos_Grade_de_Cursos_Disponiveis}    xpath=/html/body/div/main/section/div