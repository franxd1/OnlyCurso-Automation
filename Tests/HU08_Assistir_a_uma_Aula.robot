*** Settings ***
Resource    ../Resources/Steps/HU08_Assistir_a_uma_Aula_Resource.resource
Suite Setup    Abrir Navegador e logar no sistema

**Test Cases***
CN01: Acessar o player de video 
	Dado que o aluno está na página de visão geral de um curso 
	E visualiza a lista de aulas disponíveis 
	Quando ele clica no botão "Assistir Aula" de uma Aula 
	Então o sistema deve direcioná-lo para a página da aula, exibindo o player de vídeo
	