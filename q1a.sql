SELECT 
    escolas.nome AS nome_escola,
    alunos.data_matricula::date AS data_matricula,
    COUNT(alunos.id) AS total_alunos,
    SUM(cursos.preco) AS receita_total
FROM 
    alunos
JOIN 
    cursos ON alunos.curso_id = cursos.id
JOIN 
    escolas ON cursos.escola_id = escolas.id
WHERE 
    cursos.nome ILIKE '%dados%'
GROUP BY 
    escolas.nome, alunos.data_matricula::date
ORDER BY 
    data_matricula DESC;