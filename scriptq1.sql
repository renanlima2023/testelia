-- Criando a tabela de escolas
CREATE TABLE escolas (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL
);
-- Criando a Tabela de cursos
CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    preco NUMERIC(10, 2) NOT NULL,
    escola_id INT REFERENCES escolas(id)
);

-- Criando a tabela de alunos
CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    data_matricula DATE NOT NULL,
    curso_id INT REFERENCES cursos(id)
);

--Populando a tabela de escolas
INSERT INTO escolas (nome) VALUES
('Universidade de Tecnologia'),
('Academia de Dados'),
('Instituto Python');

-- Populando a tabela cursos
INSERT INTO cursos (nome, preco, escola_id) VALUES
('Introdução à Análise de Dados', 500.00, 1),
('Fundamentos de Dados', 600.00, 1),
('Visualização de Dados com Python', 450.00, 2),
('Introdução a Machine Learning', 700.00, 2),
('Bootcamp de SQL', 800.00, 3),
('Desenvolvimento de Python', 900.00, 3);
('Análise Avançada de Dados', 700.00, 1),
('Visualização Criativa de Dados', 450.00, 2),
('Ciência de Dados Aplicada', 800.00, 3),
('Estatística para Dados', 600.00, 1),
('Big Data e Analytics', 900.00, 2);


-- Populando a tabela de alunos
INSERT INTO alunos (nome, data_matricula, curso_id) VALUES
('Ana Carla', '2023-10-01', 1),
('Bruno', '2023-10-01', 1),
('Carlos', '2023-10-02', 2),
('Daniela', '2023-10-02', 2),
('Eduardo', '2023-10-03', 3),
('Fernanda', '2023-10-03', 3),
('Gustavo', '2023-10-04', 4),
('Helena', '2023-10-04', 4),
('Igor', '2023-10-05', 5),
('Juliana', '2023-10-05', 5),
('Kevin', '2023-10-06', 6),
('Lívia', '2023-10-06', 6);
('Maria', '2023-09-30', 1),
('João', '2023-09-29', 1),
('Pedro', '2023-09-28', 2),
('Laura', '2023-09-27', 2),
('Carlos', '2023-09-26', 3),
('Ana', '2023-09-25', 3);
('Clara', '2023-09-30', 1),
('João Gabriel', '2023-09-30', 1),
('Renan Lima', '2023-09-29', 2),
('Lais', '2023-09-29', 2),
('Carla', '2023-09-28', 3),
('Any', '2023-09-28', 3),
('Fernanda', '2023-09-27', 1),
('Julio', '2023-09-27', 1),
('Marcela', '2023-09-26', 2),
('Sofia', '2023-09-25', 3);
('Mariana', '2023-09-24', 1),
('Lucas', '2023-09-24', 1),
('Rafael', '2023-09-23', 2),
('Leticia', '2023-09-23', 2),
('Felipe', '2023-09-22', 3),
('Camila', '2023-09-22', 3),
('Giovanna', '2023-09-21', 1),
('Matheus', '2023-09-21', 1),
('Isabela', '2023-09-20', 2),
('Thiago', '2023-09-20', 2),
('Laura', '2023-09-19', 4), 
('João Pedro', '2023-09-19', 4), 
('Ana Clara', '2023-09-18', 5), 
('Gabriel', '2023-09-18', 5), 
('Sophia', '2023-09-17', 6), 
('Enzo', '2023-09-17', 6), 
('Alice', '2023-09-16', 3), 
('Benjamin', '2023-09-16', 3);
('Laurita', '2023-09-24', 7), 
('Frederico', '2023-09-24', 7),
('Karla', '2023-09-23', 8), 
('Clark', '2023-09-23', 8),
('Barry', '2023-09-22', 9), 
('John', '2023-09-22', 9),
('Bruce', '2023-09-21', 10), 
('Logan', '2023-09-21', 10),
('Alanis', '2023-09-20', 11), 
('Lutor', '2023-09-20', 11);


