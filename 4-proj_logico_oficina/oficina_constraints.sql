-- Adicionando constraints para Veiculo
ALTER TABLE Veiculo 
ADD CONSTRAINT fk_eqp_mecanicos FOREIGN KEY (idVeiculo) REFERENCES EqpMecanicos(idEqpMecanicos),
ADD CONSTRAINT fk_conserto FOREIGN KEY (idVeiculo) REFERENCES Conserto(idConserto),
ADD CONSTRAINT fk_revisao FOREIGN KEY (idRevisão) REFERENCES Revisão(idRevisão);

-- Adicionando constraints para PessoaFisica
ALTER TABLE PessoaFisica 
ADD CONSTRAINT fk_idClientes_pf FOREIGN KEY (idPessoaFisica) REFERENCES Clientes(idClientes),
ADD CONSTRAINT fk_clinte_pf FOREIGN KEY (idClientePf) REFERENCES Clientes(idClientes),
ADD CONSTRAINT fk_veiculo_pf FOREIGN KEY (idPessoaFisica) REFERENCES Veiculo(idVeiculo);

-- Adicionando constraints para PessoaJuridica
ALTER TABLE PessoaJuridica 
ADD CONSTRAINT fk_clientes_pj FOREIGN KEY (idPessoaJuridica) REFERENCES Clientes(idClientes),
ADD CONSTRAINT fk_veiculo_pj FOREIGN KEY (idPessoaJuridica) REFERENCES Veiculo(idVeiculo);

-- Adicionando constraints para EqpMecanicos
ALTER TABLE EqpMecanicos 
ADD CONSTRAINT fk_Mecanico FOREIGN KEY (idEqpMecanicos) REFERENCES Mecanico(idMecanico);

-- Adicionando constraints para Autorização
ALTER TABLE Autorização 
ADD CONSTRAINT fk_autorização_cliente FOREIGN KEY (idAutorização) REFERENCES Clientes(idClientes),
ADD CONSTRAINT fk_autorização_veiculo FOREIGN KEY (idAutorização) REFERENCES Veiculo(idVeiculo),
ADD CONSTRAINT fk_autorização_OdServiço FOREIGN KEY (idAutorização) REFERENCES OdServiço(idOdServiço);

-- Adicionando constraints para OsPecas
ALTER TABLE OsPecas 
ADD CONSTRAINT fk_pecas FOREIGN KEY (idOsPecas) REFERENCES Pecas(idPecas),
ADD CONSTRAINT fk_os_pecas FOREIGN KEY (idOsPecas) REFERENCES OdServiço(idOdServiço);

-- Adicionando constraints para OdServiço (duplicado na definição inicial)
ALTER TABLE OdServiço
ADD CONSTRAINT fk_serviços FOREIGN KEY (idOdServiço) REFERENCES Serviços(idServiços);
