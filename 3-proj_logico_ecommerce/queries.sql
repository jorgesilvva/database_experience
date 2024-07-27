-- Recuperações Simples com SELECT Statement
SELECT * FROM Cliente;
SELECT * FROM Pedido;
SELECT * FROM Produto;


-- Filtros com WHERE Statement
SELECT * FROM Pedido WHERE status_pedido = 'Finalizado';
SELECT * FROM Produto WHERE valor > '2000.00';


-- Expressões para Gerar Atributos Derivados
SELECT pedido_id, frete, frete * 1.1 AS frete_com_taxa FROM Pedido;


-- Ordenações dos Dados com ORDER BY
SELECT * FROM Cliente ORDER BY nome;
SELECT * FROM Produto ORDER BY valor DESC;


-- Condições de Filtros aos Grupos – HAVING Statement
SELECT cliente_id, COUNT(*) AS total_pedidos FROM Pedido GROUP BY cliente_id HAVING COUNT(*) > 1;


-- Junções Entre Tabelas para Perspectiva Mais Complexa
SELECT Cliente.nome, Pedido.descricao 
FROM Cliente 
JOIN Pedido ON Cliente.cliente_id = Pedido.cliente_id;

SELECT Fornecedor.razao_social, Produto.descricao 
FROM Fornecedor 
JOIN Disponibilizando_Produto ON Fornecedor.fornecedor_id = Disponibilizando_Produto.fornecedor_id 
JOIN Produto ON Disponibilizando_Produto.produto_id = Produto.produto_id;
