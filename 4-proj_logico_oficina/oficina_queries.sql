-- Consulta 1: Recuperar todos os veículos e seus clientes
SELECT Veiculo.Placa, Clientes.idClientes
FROM Veiculo
JOIN Clientes ON Veiculo.idVeiculo = Clientes.idVeiculo;

-- Consulta 2: Recuperar todos os consertos realizados e seus detalhes
SELECT Conserto.Descrição, OdServiço.ValorTotal
FROM Conserto
JOIN OdServiço ON Conserto.idConserto = OdServiço.idOdServiço;

-- Consulta 3: Recuperar veículos com mais de um conserto
SELECT Veiculo.Placa, COUNT(Conserto.idConserto) AS NumeroConsertos
FROM Veiculo
JOIN OdServiço ON Veiculo.idVeiculo = OdServiço.idOdServiço
JOIN Conserto ON OdServiço.idOdServiço = Conserto.idConserto
GROUP BY Veiculo.Placa
HAVING COUNT(Conserto.idConserto) > 1;

-- Consulta 4: Recuperar serviços e suas médias de valor
SELECT Serviços.Descrição, AVG(OdServiço.ValorServiço) AS MediaValor
FROM Serviços
JOIN OdServiço ON Serviços.idServiços = OdServiço.idOdServiço
GROUP BY Serviços.Descrição;

-- Consulta 5: Listar peças e serviços usados em uma ordem de serviço específica
SELECT Pecas.Descrição AS Peça, Serviços.Descrição AS Serviço
FROM OsPecas
JOIN Pecas ON OsPecas.idOsPecas = Pecas.idPecas
JOIN OdServiço ON OsPecas.idOsPecas = OdServiço.idOdServiço
JOIN Serviços ON OdServiço.idOdServiço = Serviços.idServiços
WHERE OdServiço.idOdServiço = 1; -- Ajuste o ID conforme necessário
