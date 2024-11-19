# 📊 Análise de Vendas e Tendências: Insights a partir do Banco de Dados `orders_process`

<p align="center">
  <a href="https://github.com/Edu-png">
    <img src="https://img.shields.io/badge/Autor-Eduardo%20Coqueiro-purple?style=flat&logo=github" alt="Autor">
  </a>
  <a href="mailto:eduardocoqueiro@gmail.com">
    <img src="https://img.shields.io/badge/Email-eduardocoqueiro%40gmail.com-purple?style=flat&logo=gmail" alt="Email">
  </a>
  <a href="https://linkedin.com/in/eduardocoqueiro/">
    <img src="https://img.shields.io/badge/LinkedIn-Eduardo%20Coqueiro-purple?style=flat&logo=linkedin" alt="LinkedIn">
  </a>
  <a href="https://kaggle.com/EduardoCoqueiro">
    <img src="https://img.shields.io/badge/Kaggle-Eduardo%20Coqueiro-blue?style=flat&logo=kaggle" alt="Kaggle">
  </a>
</p>

![3](https://github.com/user-attachments/assets/a292d2b5-0769-4ca6-b953-37518a47bb26)

---

## Sumário 🎯

1. [Resumo 📄](#resumo-)
2. [Introdução ☀](#introdução-)
    - [Objetivo 🎯](#objetivo-)
3. [Pipeline do Projeto 🛠](#pipeline-do-projeto-)
4. [Metodologia 🧪](#metodologia-)
5. [Consultas SQL 🚀](#consultas-sql-)
    - [Top 10 Produtos por Receita](#1-top-10-produtos-por-receita)
    - [Produtos Mais Vendidos por Região](#2-produtos-mais-vendidos-por-região)
    - [Comparação de Crescimento Mês a Mês (2022 vs. 2023)](#3-comparação-de-crescimento-mês-a-mês-2022-vs-2023)
    - [Mês com Maiores Vendas por Categoria](#4-mês-com-maiores-vendas-por-categoria)
    - [Subcategoria com Maior Crescimento de Lucro em 2023](#5-subcategoria-com-maior-crescimento-de-lucro-em-2023)
6. [Resultados 📊](#resultados-)
    - [Top 10 Produtos por Receita](#1-top-10-produtos-por-receita-1)
    - [Produtos Mais Vendidos por Região](#2-produtos-mais-vendidos-por-região-1)
    - [Comparação de Crescimento Mês a Mês](#3-comparação-de-crescimento-mês-a-mês)
    - [Mês com Maiores Vendas por Categoria](#4-mês-com-maiores-vendas-por-categoria-1)
    - [Subcategoria com Maior Crescimento de Lucro em 2023](#5-subcategoria-com-maior-crescimento-de-lucro-em-2023-1)
    - [Categoria com Maior Variação de Vendas em um Ano](#6-categoria-com-maior-variação-de-vendas-em-um-ano)
7. [Agradecimentos 🙏](#agradecimentos-)
8. [📞 Contato](#-contato)

## Resumo 📄

Este projeto foi desenvolvido para analisar o banco de dados `orders_process` com foco em descobrir tendências de vendas e identificar produtos, regiões e categorias que se destacam em termos de receita e crescimento. Utilizando consultas SQL, foram explorados padrões de vendas e lucros, incluindo:

- Identificação dos **10 produtos que geram mais receita**.
- Listagem dos **5 produtos mais vendidos em cada região**.
- Comparação de crescimento **mês a mês entre 2022 e 2023**.
- Determinação do **mês com maiores vendas para cada categoria**.
- Análise da **subcategoria com maior crescimento de lucro em 2023 comparado a 2022**.

Essas análises oferecem insights detalhados que podem auxiliar na tomada de decisões estratégicas e no planejamento para maximizar vendas e lucros.

---

## Introdução ☀

O projeto visa aplicar consultas SQL para explorar um banco de dados de vendas e entender melhor os padrões e tendências no comportamento dos consumidores. As análises realizadas fornecem insights que ajudam a identificar produtos e regiões mais lucrativos, além de observar mudanças ao longo do tempo.

### Objetivo 🎯

1. **Identificar oportunidades de crescimento:**
   - Quais produtos e regiões geram mais receita?
   - Quais categorias e subcategorias têm maior potencial?

2. **Analisar tendências temporais:**
   - Comparar o desempenho de vendas ano a ano.
   - Identificar sazonalidades ou meses mais lucrativos.

3. **Fornecer suporte estratégico:**
   - Auxiliar equipes de vendas e marketing a focar nos produtos e regiões de maior impacto.

---

## Pipeline do Projeto 🛠

![4](https://github.com/user-attachments/assets/93d0e95d-a4fe-43d5-a39a-1bc29123a41f)

1. **Importação do Banco de Dados**
   - A base de dados `orders_process` foi carregada para executar consultas SQL.

2. **Exploração Inicial**
   - Análise de dados preliminar para entender as colunas e características gerais da tabela.

3. **Consultas Específicas**
   - Aplicação de consultas para responder perguntas estratégicas, como top produtos e tendências de vendas.

4. **Análise Temporal**
   - Comparação de crescimento entre anos e meses para identificar padrões e sazonalidades.

5. **Resultados e Visualizações**
   - Apresentação dos resultados das consultas em tabelas e gráficos para melhor entendimento.

---

## Metodologia 🧪

A metodologia deste projeto foi organizada em etapas estruturadas para responder às perguntas estratégicas sobre vendas e lucros no banco de dados `orders_process`. Abaixo, apresento as etapas utilizadas:

---

### 1. **Importação e Exploração Inicial dos Dados**
- **Importação da Base de Dados:**
  - A tabela `orders_process` foi carregada no ambiente SQL para execução das consultas.
- **Exploração Inicial:**
  - Foram examinadas as colunas e características gerais da base de dados para compreender sua estrutura e conteúdo.

---

### 2. **Criação de Consultas Específicas**
As consultas foram criadas para responder perguntas estratégicas, tais como:
- Identificação dos produtos com maior receita.
- Descoberta dos produtos mais vendidos por região.
- Comparação de crescimento mês a mês entre 2022 e 2023.

---

### 3. **Análise Temporal**
- **Divisão por Anos e Meses:**
  - A função `strftime` foi utilizada para extrair o ano e o mês da coluna `order_date`.
- **Comparação de Crescimento:**
  - Foram calculadas as vendas de 2022 e 2023 para cada mês, utilizando condições (`CASE`) e somatórios.

---

### 4. **Análise por Categorias e Subcategorias**
- **Mês com Maiores Vendas por Categoria:**
  - Determinados meses foram identificados como os de maior receita para cada categoria.
- **Crescimento de Subcategorias:**
  - O crescimento de lucro entre 2022 e 2023 foi calculado para cada subcategoria.

---

### 5. **Classificação e Rankeamento**
- **Produtos Mais Vendidos:**
  - A função `ROW_NUMBER()` foi aplicada para rankear os produtos mais vendidos por região.
- **Filtragem por Crescimento:**
  - Subcategorias foram ordenadas com base no crescimento de lucro, permitindo identificar as que mais evoluíram em 2023.

---

### Ferramentas Utilizadas
- **SQL:** Linguagem utilizada para manipulação e consulta dos dados.
- **Funções SQL:** 
  - `GROUP BY`, `CASE`, `ROW_NUMBER()` e `WITH` foram amplamente usados para agrupar, condicionar e organizar os resultados.
- **Funções Temporais:**
  - `strftime`: Extração de ano e mês da data das vendas.
- **CTEs (Common Table Expressions):**
  - Utilizadas para simplificar consultas complexas e facilitar a leitura do código.

---

Essa metodologia garantiu uma abordagem sistemática e eficiente para explorar e responder às perguntas do projeto, maximizando a clareza e precisão dos resultados.

## Consultas SQL 🚀

### 1. **Top 10 Produtos por Receita**
Consulta que identifica os 10 produtos com maior receita, agrupando as vendas pelo `product_id`.

```sql
SELECT product_id, SUM(sale_price) AS sales
FROM orders_process
GROUP BY product_id
ORDER BY sales DESC
LIMIT 10;
```
### 2. **Produtos Mais Vendidos por Região**
Listagem dos 5 produtos mais vendidos em cada região, utilizando a função ROW_NUMBER() para ranquear os produtos.

```sql
WITH cte AS (
    SELECT region, product_id, SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY region, product_id
)
SELECT region, product_id, sales
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC) AS rn
    FROM cte
) A
WHERE rn <= 5;
```

### 3. **Comparação de Crescimento Mês a Mês (2022 vs. 2023)**
Comparação do crescimento de vendas mês a mês entre os anos de 2022 e 2023, utilizando funções de agregação e condições para calcular as vendas por ano e mês.

```sql
WITH cte AS (
    SELECT 
        strftime('%Y', order_date) AS order_year,
        strftime('%m', order_date) AS order_month,
        SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY strftime('%Y', order_date), strftime('%m', order_date)
)
SELECT 
    order_month,
    SUM(CASE WHEN order_year = '2022' THEN sales ELSE 0 END) AS sales_2022,
    SUM(CASE WHEN order_year = '2023' THEN sales ELSE 0 END) AS sales_2023
FROM cte
GROUP BY order_month
ORDER BY order_month;
```
### 4. **Mês com Maiores Vendas por Categoria**
Consulta que identifica o mês com maior receita para cada categoria, utilizando CTEs para organizar os dados e subconsultas para encontrar o valor máximo por categoria.

```sql
WITH cte AS (
    SELECT 
        category,
        strftime('%Y-%m', order_date) AS order_year_month,
        SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY category, strftime('%Y-%m', order_date)
)
SELECT 
    category, 
    order_year_month, 
    sales
FROM cte AS main
WHERE sales = (SELECT MAX(sales) FROM cte AS sub WHERE sub.category = main.category)
ORDER BY category, order_year_month;

```
### 5. **Subcategoria com Maior Crescimento de Lucro em 2023**
Consulta que identifica a subcategoria com o maior crescimento de lucro entre 2022 e 2023, utilizando CTEs para calcular as vendas por ano e comparar os resultados.

```sql
WITH cte AS (
    SELECT 
        sub_category,
        strftime('%Y', order_date) AS order_year,
        SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY sub_category, strftime('%Y', order_date)
),
cte2 AS (
    SELECT 
        sub_category,
        SUM(CASE WHEN order_year = '2022' THEN sales ELSE 0 END) AS sales_2022,
        SUM(CASE WHEN order_year = '2023' THEN sales ELSE 0 END) AS sales_2023
    FROM cte
    GROUP BY sub_category
)
SELECT 
    sub_category,
    (sales_2023 - sales_2022) AS growth
FROM cte2
ORDER BY growth DESC
LIMIT 1;

```
## Resultados 📊

As consultas SQL realizadas neste projeto proporcionaram diversos insights valiosos sobre vendas, categorias e subcategorias no banco de dados `orders_process`. Abaixo estão os principais resultados:

---

### 1. **Top 10 Produtos por Receita**
Os 10 produtos que geraram a maior receita foram identificados, permitindo o foco em itens de alto desempenho para estratégias de vendas. 

---

### 2. **Produtos Mais Vendidos por Região**
Para cada região, os 5 produtos mais vendidos foram determinados, destacando preferências regionais e possibilitando personalizações no portfólio de produtos.

---

### 3. **Comparação de Crescimento Mês a Mês**
A comparação das vendas entre 2022 e 2023 revelou:
- Crescimentos e declínios em meses específicos.
- Identificação de padrões sazonais nas vendas.

---

### 4. **Mês com Maiores Vendas por Categoria**
O mês mais lucrativo para cada categoria foi identificado, auxiliando na compreensão de sazonalidades e períodos de alta demanda.

---

### 5. **Subcategoria com Maior Crescimento de Lucro em 2023**
A subcategoria que apresentou o maior crescimento em 2023 em relação a 2022 foi determinada. Esse insight é fundamental para alocar recursos e esforços em áreas de alto potencial de crescimento.

---

### 6. **Categoria com Maior Variação de Vendas em um Ano**
A categoria com a maior variação de vendas ao longo de um ano foi identificada, destacando possíveis sazonalidades ou mudanças na demanda ao longo do tempo.

---

### Conclusão Geral
Esses resultados fornecem uma base sólida para decisões estratégicas e de marketing, permitindo ajustes no portfólio de produtos, identificação de oportunidades regionais e um melhor entendimento das sazonalidades de vendas.

## Agradecimentos 🙏

Gostaria de expressar minha gratidão a todos que contribuíram para o desenvolvimento deste projeto:

- **Equipe de Desenvolvimento e Dados:** Pela criação e manutenção do banco de dados `orders_process`, que permitiu análises detalhadas e insights valiosos.
- **Comunidade de Dados:** Pelas ferramentas e recursos que possibilitaram a aplicação de consultas SQL de maneira eficiente e estruturada.
- **Mentores e Colegas:** Por fornecerem suporte e ideias durante a execução deste projeto, contribuindo para um aprendizado contínuo.

Este projeto reflete o valor da colaboração e do compartilhamento de conhecimentos no campo da análise de dados. Muito obrigado a todos que fizeram parte dessa jornada!

<div align="center">
  <img src="https://github.com/user-attachments/assets/54afb33c-97be-40b6-8c96-0f12852e946f" alt="thank-you" width="500">
</div>

## 📞 Contato
- **LinkedIn:** [Eduardo Coqueiro](https://www.linkedin.com/in/eduardocoqueiro/)
- **Site:** [Eduardo Coqueiro](https://dataguy.my.canva.site/eduardo-coqueiro)
- **Kaggle:** [Eduardo Coqueiro](https://www.kaggle.com/eduardocoqueiro)

