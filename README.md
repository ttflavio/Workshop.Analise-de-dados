# Projeto de Análise de Dados com MySQL

Este repositório contém as tabelas `clientes` e `pedidos` criadas e utilizadas no projeto de análise de dados utilizando MySQL.

## Índice

1. [Sobre](#sobre)
2. [Tabelas](#tabelas)
3. [Como Usar](#como-usar)

## Sobre

Este projeto utiliza o banco de dados MySQL para armazenar e manipular dados de clientes e seus pedidos. O objetivo é realizar operações de análise e consultas para gerar insights, como identificar o valor médio dos pedidos ou analisar a distribuição de clientes por cidade.

## Tabelas

As seguintes tabelas foram criadas no banco de dados:

### 1. **clientes**

Esta tabela contém informações sobre os clientes.

| Coluna     | Tipo de Dados | Descrição                      |
|------------|---------------|--------------------------------|
| `id_cliente` | INT           | ID único do cliente            |
| `nome`      | VARCHAR(255)  | Nome do cliente                |
| `idade`     | INT           | Idade do cliente               |
| `cidade`    | VARCHAR(255)  | Cidade do cliente              |

Exemplo de dados na tabela `clientes`:

| id_cliente | nome         | idade | cidade       |
|------------|--------------|-------|--------------|
| 1          | Flávio       | 21    | João Pessoa  |
| 2          | Manu         | 30    | João Pessoa  |
| 3          | Maria        | 24    | João Pessoa  |
| 4          | João Pedro   | 30    | João Pessoa  |
| 5          | Mariana      | 22    | Salvador     |
| 6          | Lucas        | 35    | Porto Alegre|
| 7          | Roberta      | 27    | Recife       |
| 8          | Bianca       | 29    | Recife       |
| 9          | Beatriz      | 26    | Fortaleza    |
| 10         | Ricardo      | 33    | Manaus      |

### 2. **pedidos**

Esta tabela contém informações sobre os pedidos feitos pelos clientes.

| Coluna      | Tipo de Dados  | Descrição                      |
|-------------|----------------|--------------------------------|
| `id_pedido` | INT            | ID único do pedido             |
| `id_cliente`| INT            | ID do cliente (referência à tabela `clientes`) |
| `valor`     | DECIMAL(10,2)  | Valor do pedido                |
| `data_pedido`| DATE          | Data do pedido                 |

Exemplo de dados na tabela `pedidos`:

| id_pedido | id_cliente | valor   | data_pedido |
|-----------|------------|---------|-------------|
| 1         | 1          | 150.00  | 2024-02-01  |
| 2         | 2          | 230.50  | 2024-02-03  |
| 3         | 3          | 75.90   | 2024-02-05  |
| 4         | 4          | 300.00  | 2024-02-07  |
| 5         | 5          | 125.40  | 2024-02-10  |
| 6         | 6          | 500.00  | 2024-02-12  |
| 7         | 7          | 80.00   | 2024-02-15  |
| 8         | 8          | 220.75  | 2024-02-18  |
| 9         | 9          | 90.60   | 2024-02-20  |
| 10        | 10         | 310.30  | 2024-02-22  |

## Como Usar

1. Clone o repositório:

   ```bash
   git clone https://github.com/ttflavio/workshop.analise-de-dados.git

