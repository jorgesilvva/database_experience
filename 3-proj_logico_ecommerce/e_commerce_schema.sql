-- Criação das tabelas principais
CREATE TABLE Cliente (
    cliente_id INT PRIMARY KEY,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    cpf_cnpj VARCHAR(45) UNIQUE
);

CREATE TABLE Pedido (
    pedido_id INT PRIMARY KEY,
    status_pedido VARCHAR(45),
    descricao VARCHAR(45),
    frete FLOAT,
    cliente_id INT,
    entrega_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (entrega_id) REFERENCES Entrega(entrega_id)
);

CREATE TABLE Produto (
    produto_id INT PRIMARY KEY,
    categoria VARCHAR(45),
    descricao VARCHAR(45),
    valor VARCHAR(45)
);

CREATE TABLE Fornecedor (
    fornecedor_id INT PRIMARY KEY,
    razao_social VARCHAR(45),
    cnpj VARCHAR(45) UNIQUE
);

CREATE TABLE Terceiro (
    terceiro_id INT PRIMARY KEY,
    razao_social VARCHAR(45),
    local VARCHAR(45),
    cpf_cnpj VARCHAR(45) UNIQUE
);

CREATE TABLE Estoque (
    estoque_id INT PRIMARY KEY,
    local VARCHAR(45)
);

CREATE TABLE Pagamento (
    pagamento_id INT PRIMARY KEY,
    cartao VARCHAR(45),
    bandeira VARCHAR(45),
    numero VARCHAR(45),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE Entrega (
    entrega_id INT PRIMARY KEY,
    status VARCHAR(45),
    codigo_rastreio VARCHAR(45),
    data DATE
);

-- Tabelas de relacionamentos
CREATE TABLE Disponibilizando_Produto (
    fornecedor_id INT,
    produto_id INT,
    PRIMARY KEY (fornecedor_id, produto_id),
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedor(fornecedor_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);

CREATE TABLE Produtos_por_Vendedor (
    terceiro_id INT,
    produto_id INT,
    quantidade INT,
    PRIMARY KEY (terceiro_id, produto_id),
    FOREIGN KEY (terceiro_id) REFERENCES Terceiro(terceiro_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);

CREATE TABLE Produto_por_Pedido (
    produto_id INT,
    pedido_id INT,
    quantidade VARCHAR(45),
    PRIMARY KEY (produto_id, pedido_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id)
);

CREATE TABLE Produto_por_Estoque (
    produto_id INT,
    estoque_id INT,
    quantidade INT,
    PRIMARY KEY (produto_id, estoque_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id),
    FOREIGN KEY (estoque_id) REFERENCES Estoque(estoque_id)
);
