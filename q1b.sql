WITH matriculas AS (
    SELECT 
        escolas.nome AS nome_escola,
        alunos.data_matricula::date AS data_matricula,
        COUNT(alunos.id) AS total_alunos
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
)
SELECT 
    nome_escola,
    data_matricula,
    total_alunos,
    SUM(total_alunos) OVER (PARTITION BY nome_escola ORDER BY data_matricula) AS soma_acumulada,
    ROUND(
        AVG(total_alunos) OVER (PARTITION BY nome_escola ORDER BY data_matricula ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),
        2
    ) AS media_movel_7_dias,
    ROUND(
        AVG(total_alunos) OVER (PARTITION BY nome_escola ORDER BY data_matricula ROWS BETWEEN 29 PRECEDING AND CURRENT ROW),
        2
    ) AS media_movel_30_dias
FROM 
    matriculas
ORDER BY 
    nome_escola, data_matricula DESC;