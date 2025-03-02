CREATE DATABASE loja_roupas;
USE loja_roupas;
-- Tabela Cliente
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

-- Tabela Produto
CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

-- Tabela Pedido
CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela Item_Pedido (Relacionamento N:M entre Pedido e Produto)
CREATE TABLE Item_Pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Tabela Estoque
CREATE TABLE Estoque (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade_disponivel INT NOT NULL,
    localizacao VARCHAR(50),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
-- Inserir clientes
INSERT INTO Cliente (nome, email, telefone) VALUES
('Ana Silva', 'ana@email.com', '11987654321'),
('Carlos Souza', 'carlos@email.com', '11981234567'),
('Mariana Lima', 'mariana@email.com', '11976543210'),
('João Pereira', 'joao@email.com', '11998765432'),
('Fernanda Costa', 'fernanda@email.com', '11992345678'),
('Ricardo Mendes', 'ricardo@email.com', '11993456789'),
('Julia Alves', 'julia@email.com', '11994567890'),
('Gabriel Santos', 'gabriel@email.com', '11995678901');

-- Inserir produtos
INSERT INTO Produto (nome, preco, categoria) VALUES
('Camiseta Branca', 49.90, 'Camiseta'),
('Calça Jeans', 129.90, 'Calça'),
('Tênis Esportivo', 199.90, 'Calçado'),
('Jaqueta Couro', 299.90, 'Casaco'),
('Vestido Floral', 159.90, 'Vestido'),
('Blusa de Moletom', 89.90, 'Casaco'),
('Short Jeans', 79.90, 'Short'),
('Chinelo', 39.90, 'Calçado');

-- Inserir pedidos
INSERT INTO Pedido (id_cliente, data_pedido, valor_total) VALUES
(1, '2025-03-01', 179.80),
(2, '2025-03-02', 299.90),
(3, '2025-03-03', 129.90),
(4, '2025-03-04', 89.90),
(5, '2025-03-05', 49.90),
(6, '2025-03-06', 159.90),
(7, '2025-03-07', 79.90),
(8, '2025-03-08', 39.90);

-- Inserir itens nos pedidos
INSERT INTO Item_Pedido (id_pedido, id_produto, quantidade, subtotal) VALUES
(1, 1, 2, 99.80),
(2, 4, 1, 299.90),
(3, 2, 1, 129.90),
(4, 6, 1, 89.90),
(5, 1, 1, 49.90),
(6, 5, 1, 159.90),
(7, 7, 1, 79.90),
(8, 8, 1, 39.90);

-- Inserir estoque
INSERT INTO Estoque (id_produto, quantidade_disponivel, localizacao) VALUES
(1, 50, 'A1'),
(2, 30, 'B2'),
(3, 20, 'C3'),
(4, 15, 'D4'),
(5, 10, 'E5'),
(6, 25, 'F6'),
(7, 40, 'G7'),
(8, 60, 'H8');
