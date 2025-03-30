#  Analista de Dados

Este repositório foi criado como parte do processo seletivo para a vaga de **Analista de Dados Júnior**. Ele contém soluções para duas questões de SQL desenvolvidas em PostgreSQL, demonstrando habilidades em:

- Modelagem e manipulação de dados.
- Criação de consultas SQL.
- Análise de dados com foco em métricas acumuladas e médias móveis.

Todas as soluções, incluindo os scripts para criar e popular o banco de dados, estão disponíveis no seguinte gist:

- [Link para o Gist](https://gist.github.com/renanlima2023/ac8840895e19be1b280d03574fc0d9c7)

Para validar as consultas, foi criado um banco de dados PostgreSQL com tabelas e dados fictícios. As instruções para executar localmente estão detalhadas abaixo.

---

## Índice

1. [Questão 1: Análise de Matrículas](#questão-1-análise-de-matrículas)
   - [Estrutura das Tabelas](#estrutura-das-tabelas)
   - [Item A: Quantidade de Alunos e Valor Total das Matrículas](#item-a-quantidade-de-alunos-e-valor-total-das-matrículas)
   - [Item B: Soma Acumulada e Médias Móveis](#item-b-soma-acumulada-e-médias-móveis)
   - [Validação](#validação)

2. [Questão 2: Análise de Departamentos](#questão-2-análise-de-departamentos)
   - [Estrutura das Tabelas](#estrutura-das-tabelas-1)
   - [Solução](#solução-1)
   - [Validação](#validação-1)

3. [Como Executar Localmente](#como-executar-localmente)

4. [Contribuições](#contribuições)

---

## Questão 1: Análise de Matrículas

### Estrutura das Tabelas

As tabelas foram renomeadas para facilitar o entendimento:

- **escolas**: `(id SERIAL PRIMARY KEY, nome TEXT NOT NULL)`
- **cursos**: `(id SERIAL PRIMARY KEY, nome TEXT NOT NULL, preco NUMERIC(10, 2) NOT NULL, escola_id INT REFERENCES escolas(id))`
- **alunos**: `(id SERIAL PRIMARY KEY, nome TEXT NOT NULL, data_matricula DATE NOT NULL, curso_id INT REFERENCES cursos(id))`

### Solução

A solução para esta questão está dividida em dois itens:

#### Item A:
- Retorna a quantidade de alunos matriculados e o valor total das matrículas por escola e dia.
- Restrição: Apenas cursos cujo nome começa com a palavra "dados".
- Ordenação: Do dia mais recente para o mais antigo.

#### Item B:
- Calcula, por escola e por dia:
  - Soma acumulada da quantidade de alunos.
  - Média móvel de 7 dias da quantidade de alunos.
  - Média móvel de 30 dias da quantidade de alunos.

Os scripts SQL para resolver ambos os itens estão disponíveis no gist mencionado acima.

### Validação

Para validar as consultas, foi criado um banco de dados PostgreSQL com as tabelas `escolas`, `cursos` e `alunos`, populadas com dados fictícios. O script completo para criar e popular o banco de dados também está disponível no gist.

---

## Questão 2: Análise de Departamentos

### Estrutura das Tabelas

Foi disponibilidado  `base_dados_questao2.sql`,  para  a consulta. Recomenda-se executar o script localmente para analisar o conteúdo das tabelas e validar a solução.

### Solução

A solução para esta questão também está disponível no gist mencionado acima. A consulta SQL calcula, para cada departamento:

- Quantidade de empregados.
- Média salarial.
- Maior e menor salários.
- Ordenação: Por média salarial decrescente.

### Validação

Para validar a solução, execute o arquivo `base_dados_questao2.sql` no PostgreSQL. Em seguida, execute a consulta fornecida no gist para verificar os resultados.

---

## Como Executar Localmente

1. **Instale o PostgreSQL**:
   - Siga as instruções de instalação disponíveis no site oficial: [PostgreSQL Downloads](https://www.postgresql.org/download/).

2. **Crie o Banco de Dados**:
   - Para Questão 1, crie um banco de dados vazio no PostgreSQL.

3. **Execute o Script do Gist**:
   - Copie o conteúdo do gist e execute-o no terminal do PostgreSQL ou use uma ferramenta gráfica como pgAdmin.
   - Certifique-se de executar as partes relevantes para cada questão.

4. **Teste as Consultas**:
   - Após criar as tabelas e inserir os dados, execute as consultas fornecidas no gist para validar os resultados.


---

Desenvolvido por Renan Lima
