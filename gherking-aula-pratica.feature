Feature: Emissão do certificado

    Eu, como aluno da plataforma
    Gostaria, de ao completar um curso seja emitido certificado
    Porque, assim consigo comprovar meu conhecimento técnico

Background: Estar matriculado no curso Gherking do básico ao Avançado
Given que estou logado na plataforma
And possuo matrícula ativa


Scenario Outline: Emissão de certificado
And matriculado no curso <nomeCurso>
When finalizo o meu curso
Then tenho o meu certificado emitido

Examples:
    | nomeCurso                           | 
    | "Gherking do básico ao Avançado"    | 
    | "7 princípios do Teste do Software" | 
    | "Operadores Lógicos"                | 



Scenario: Curso em andamento
When assisto as aulas
Then não tenho meu certificado disponível
But possuo aulas assistidas