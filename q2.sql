WITH salario_empregado AS (
    SELECT 
        e.lotacao AS cod_dep,
        SUM(COALESCE(v.valor, 0)) AS salario_total
    FROM 
        empregado e
    LEFT JOIN 
        emp_venc ev ON e.matr = ev.matr
    LEFT JOIN 
        vencimento v ON ev.cod_venc = v.cod_venc
    GROUP BY 
        e.matr, e.lotacao
)
SELECT 
    d.nome AS departamento_nome,
    COUNT(se.cod_dep) AS qtd_empregados,
    ROUND(AVG(se.salario_total), 2) AS media_salarial,
    ROUND(MAX(se.salario_total), 2) AS maior_salario,
    ROUND(MIN(se.salario_total), 2) AS menor_salario
FROM 
    departamento d
LEFT JOIN 
    salario_empregado se ON d.cod_dep = se.cod_dep
GROUP BY 
    d.nome
ORDER BY 
    media_salarial DESC;