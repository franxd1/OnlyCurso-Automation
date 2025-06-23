*** Settings ***
Resource    ../Resources/Steps/HU09_Navegar_Dentro_do_Curso_Resource.resource
Suite Setup    Abrir Navegador e logar no sistema

*** Test Cases ***
CN01 - Navegação sequencial bem-sucedida
    Dado que o aluno está assistindo à "Aula 1" de um curso
    E o player de vídeo está disponível
    Quando ele clica no botão "Próximo"
    Então o sistema deve carregar o conteúdo da "Aula 2" no player de vídeo
    