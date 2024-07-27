# Desafio: Compreendendo Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL)

## Introdução
O objetivo é explorar e entender o papel dos Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL) no contexto de um Engenheiro de Dados. A seguir, você encontrará uma documentação detalhada com conceitos, definições e insights relevantes sobre cada tipo de banco de dados.

## Bancos de Dados Relacionais (SQL)

### O que são?
Os Bancos de Dados Relacionais (SQL) armazenam dados em tabelas estruturadas com linhas e colunas. Cada tabela possui uma chave primária que identifica unicamente cada registro, e as tabelas podem se relacionar através de chaves estrangeiras.

### Características
- **Estrutura:** Dados organizados em tabelas.
- **Linguagem:** Usa SQL (Structured Query Language) para definir e manipular os dados.
- **ACID:** Garantem propriedades ACID (Atomicidade, Consistência, Isolamento e Durabilidade) para transações.
- **Esquema Fixo:** Requer definição do esquema antes de inserir dados.

### Exemplos de SGBDs Relacionais
- MySQL
- PostgreSQL
- Oracle
- SQL Server

## Bancos de Dados Não Relacionais (NoSQL)

### O que são?
Os Bancos de Dados Não Relacionais (NoSQL) foram desenvolvidos para lidar com grandes volumes de dados não estruturados e semi-estruturados. Eles não usam tabelas e SQL tradicional, e sua estrutura pode variar conforme o tipo de NoSQL.

### Tipos de Bancos de Dados NoSQL
- **Documentos:** Armazenam dados em documentos JSON ou BSON (ex: MongoDB).
- **Grafos:** Armazenam dados em grafos com vértices e arestas (ex: Neo4j).
- **Colunas:** Armazenam dados em colunas em vez de linhas (ex: Cassandra).
- **Chave-Valor:** Armazenam pares de chave-valor (ex: Redis).

### Características
- **Flexibilidade:** Estrutura flexível que pode ser alterada a qualquer momento.
- **Escalabilidade:** Projetados para escalar horizontalmente.
- **Desempenho:** Otimizados para leitura/escrita de grandes volumes de dados.
- **CAP Theorem:** Compromisso entre Consistência, Disponibilidade e Tolerância a Partições.

### Exemplos de SGBDs Não Relacionais
- MongoDB
- Cassandra
- Redis
- Neo4j

## Comparação entre SQL e NoSQL

### Vantagens do SQL
- **Integridade dos Dados:** Suporte a ACID.
- **Consultas Complexas:** Uso de SQL para consultas complexas.
- **Relacional:** Adequado para dados relacionais e estruturados.

### Vantagens do NoSQL
- **Escalabilidade:** Melhor para grandes volumes de dados e alta demanda de desempenho.
- **Flexibilidade:** Estrutura de dados flexível.
- **Desempenho:** Alta velocidade de leitura/escrita.

### Desvantagens do SQL
- **Esquema Rígido:** Difícil de alterar esquemas.
- **Escalabilidade:** Limitada à escalabilidade vertical.

### Desvantagens do NoSQL
- **Consistência:** Pode não garantir consistência imediata.
- **Consultas:** Pode ser menos eficiente para consultas complexas.

## Casos de Uso

### SQL
- Sistemas de gerenciamento de empresas (ERP).
- Aplicações financeiras.
- Sistemas de reserva (aérea, hotelaria).

### NoSQL
- Aplicações web em tempo real.
- Análise de Big Data.
- Redes sociais.

## Insights e Aprendizados
Durante o desenvolvimento deste projeto, alguns insights importantes foram observados:
- A escolha entre SQL e NoSQL depende das necessidades específicas do projeto, como a estrutura dos dados, volume, velocidade e escalabilidade.
- Bancos de dados relacionais são ideais para aplicações que exigem transações complexas e integridade dos dados.
- Bancos de dados NoSQL são mais adequados para aplicações que lidam com grandes volumes de dados não estruturados e que requerem alta escalabilidade e desempenho.

## Conclusão
Compreender as características e diferenças entre Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL) é essencial para um engenheiro de dados. Este conhecimento permite a escolha adequada da tecnologia de banco de dados, otimizando o desempenho e a eficiência dos projetos.