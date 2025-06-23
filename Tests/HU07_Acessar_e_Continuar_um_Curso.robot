*** Settings ***
Resource    ../Resources/Steps/HU07_Acessar_e_Continuar_um_Curso_Resource.resource
Suite Setup    Abrir Navegador       

**Test Cases***
CN01: Acessar um curso pela dashboard 
	Dado que o usuário está na dashboard 
	E visualiza seus cursos matriculados 
	Quando ele clica no botão "Continuar" de um curso 
	Então o sistema o direciona para a página de conteúdo daquele curso
	