-- Inserção de dados para testes
INSERT INTO Cliente (cliente_id, nome, endereco, cpf_cnpj) VALUES (1, 'João Silva', 'Rua A', '123.456.789-00');
INSERT INTO Cliente (cliente_id, nome, endereco, cpf_cnpj) VALUES (2, 'Empresa XYZ', 'Rua B', '12.345.678/0001-99');

INSERT INTO Fornecedor (fornecedor_id, razao_social, cnpj) VALUES (1, 'Fornecedor A', '98.765.432/0001-11');
INSERT INTO Fornecedor (fornecedor_id, razao_social, cnpj) VALUES (2, 'Fornecedor B', '97.654.321/0001-22');

INSERT INTO Produto (produto_id, categoria, descricao, valor) VALUES (1, 'Eletrônicos', 'Smartphone', '1200.00');
INSERT INTO Produto (produto_id, categoria, descricao, valor) VALUES (2, 'Eletrônicos', 'Notebook', '3500.00');

INSERT INTO Pedido (pedido_id, status_pedido, descricao, frete, cliente_id, entrega_id) VALUES (1, 'Em andamento', 'Compra de smartphone', 20.00, 1, 1);
INSERT INTO Pedido (pedido_id, status_pedido, descricao, frete, cliente_id, entrega_id) VALUES (2, 'Finalizado', 'Compra de notebook', 30.00, 2, 2);

INSERT INTO Entrega (entrega_id, status, codigo_rastreio, data) VALUES (1, 'Em trânsito', 'AB123456789BR', '2024-07-25');
INSERT INTO Entrega (entrega_id, status, codigo_rastreio, data) VALUES (2, 'Entregue', 'XY987654321BR', '2024-07-20');

INSERT INTO Pagamento (pagamento_id, cartao, bandeira, numero, cliente_id) VALUES (1, 'Visa', 'Visa', '1234-5678-9012-3456', 1);
INSERT INTO Pagamento (pagamento_id, cartao, bandeira, numero, cliente_id) VALUES (2, 'MasterCard', 'MasterCard', '6543-2109-8765-4321', 2);

INSERT INTO Disponibilizando_Produto (fornecedor_id, produto_id) VALUES (1, 1);
INSERT INTO Disponibilizando_Produto (fornecedor_id, produto_id) VALUES (2, 2);

INSERT INTO Produtos_por_Vendedor (terceiro_id, produto_id, quantidade) VALUES (1, 1, 10);
INSERT INTO Produtos_por_Vendedor (terceiro_id, produto_id, quantidade) VALUES (2, 2, 5);

INSERT INTO Produto_por_Pedido (produto_id, pedido_id, quantidade) VALUES (1, 1, '2');
INSERT INTO Produto_por_Pedido (produto_id, pedido_id, quantidade) VALUES (2, 2, '1');

INSERT INTO Produto_por_Estoque (produto_id, estoque_id, quantidade) VALUES (1, 1, 50);
INSERT INTO Produto_por_Estoque (produto_id, estoque_id, quantidade) VALUES (2, 2, 30);
