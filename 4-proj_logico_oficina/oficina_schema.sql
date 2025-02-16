-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS Oficina;
USE Oficina;

-- VEICULO
CREATE TABLE Veiculo(
    idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    idRevisão INT,
    Placa CHAR(7) NOT NULL,
    CONSTRAINT placa_idVeiculo UNIQUE (idVeiculo, Placa)
);

-- CLIENTES
CREATE TABLE Clientes(
    idClientes INT AUTO_INCREMENT PRIMARY KEY,
    idVeiculo INT,
    CONSTRAINT fk_veiculo FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)
);

-- PESSOA FISICA
CREATE TABLE PessoaFisica(
    idPessoaFisica INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Endereço VARCHAR(45),
    Contato CHAR(11)
);

ALTER TABLE PessoaFisica ADD CONSTRAINT unique_cpf_PessoaFisica UNIQUE (CPF);

-- PESSOA JURIDICA
CREATE TABLE PessoaJuridica(
    idPessoaJuridica INT AUTO_INCREMENT PRIMARY KEY,
    RazaoSocial VARCHAR(45) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    Endereço VARCHAR(45),
    Contato CHAR(11),
    CONSTRAINT unique_cnpj_PessoaJuridica UNIQUE (CNPJ)
);

-- CONSERTO
CREATE TABLE Conserto(
    idConserto INT AUTO_INCREMENT PRIMARY KEY,
    Descrição VARCHAR(45) NOT NULL
);

-- REVISÃO
CREATE TABLE Revisão(
    idRevisão INT AUTO_INCREMENT PRIMARY KEY,
    Descrição VARCHAR(45) NOT NULL
);

-- MECANICO
CREATE TABLE Mecanico(
    idMecanico INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    Endereço VARCHAR(45) NOT NULL,
    Especialidade VARCHAR(45) NOT NULL
);

-- EQUIPE MECÂNICOS
CREATE TABLE EqpMecanicos(
    idEqpMecanicos INT AUTO_INCREMENT PRIMARY KEY
);

-- ORDEM DE SERVIÇO
CREATE TABLE OdServiço(
    idOdServiço INT AUTO_INCREMENT PRIMARY KEY,
    DataEmissão DATE,
    ValorServiço FLOAT NOT NULL,
    ValorPeça FLOAT NOT NULL,
    ValorTotal FLOAT NOT NULL,
    Status ENUM('AGUARDANDO', 'EM ANDAMENTO', 'CONCLUIDO', 'CANCELADO'),
    DataConclusão DATE
);

-- REFERENCIA DE PREÇOS
CREATE TABLE ReferenciaPreços(
    idReferenciaPreços INT AUTO_INCREMENT PRIMARY KEY
);

-- AUTORIZAÇÃO CLIENTE
CREATE TABLE Autorização(
    idAutorização INT AUTO_INCREMENT PRIMARY KEY,
    Autorizado BOOL DEFAULT FALSE
);

-- PEÇAS
CREATE TABLE Pecas(
    idPecas INT AUTO_INCREMENT PRIMARY KEY,
    Descrição VARCHAR(45),
    Valor FLOAT NOT NULL
);

-- OS PEÇAS
CREATE TABLE OsPecas(
    idOsPecas INT AUTO_INCREMENT PRIMARY KEY
);

-- SERVIÇOS
CREATE TABLE Serviços(
    idServiços INT AUTO_INCREMENT PRIMARY KEY,
    Descrição VARCHAR(45),
    Valor FLOAT NOT NULL
);
