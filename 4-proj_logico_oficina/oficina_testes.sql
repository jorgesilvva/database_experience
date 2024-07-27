-- Inserir dados nas tabelas
INSERT INTO Veiculo (Placa, idRevisão) VALUES ('ABC1234', 1);
INSERT INTO Clientes (idVeiculo) VALUES (1);
INSERT INTO PessoaFisica (Nome, CPF, Endereço, Contato) VALUES ('João da Silva', '12345678901', 'Rua A, 123', '98765432100');
INSERT INTO PessoaJuridica (RazaoSocial, CNPJ, Endereço, Contato) VALUES ('Oficina X Ltda', '12345678000195', 'Rua B, 456', '91234567890');
INSERT INTO Conserto (Descrição) VALUES ('Troca de óleo');
INSERT INTO Revisão (Descrição) VALUES ('Revisão completa');
INSERT INTO Mecanico (Nome, Endereço, Especialidade) VALUES ('Carlos Souza', 'Rua C, 789', 'Motorista');
INSERT INTO EqpMecanicos (idEqpMecanicos) VALUES (1);
INSERT INTO OdServiço (DataEmissão, ValorServiço, ValorPeça, ValorTotal, Status, DataConclusão) VALUES ('2024-07-27', 100.00, 50.00, 150.00, 'AGUARDANDO', NULL);
INSERT INTO ReferenciaPreços (idReferenciaPreços) VALUES (1);
INSERT INTO Autorização (Autorizado) VALUES (TRUE);
INSERT INTO Pecas (Descrição, Valor) VALUES ('Filtro de óleo', 30.00);
INSERT INTO OsPecas (idOsPecas) VALUES (1);
INSERT INTO Serviços (Descrição, Valor) VALUES ('Troca de óleo', 50.00);
