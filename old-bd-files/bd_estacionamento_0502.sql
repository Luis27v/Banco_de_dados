-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

-- criar o banco de dados
create database bd_estacionamento_0502;

CREATE TABLE tb_cliente (
cpf VARCHAR(11) PRIMARY KEY,
cliente VARCHAR(99)
)

CREATE TABLE tb_estacionamento (
nr_ticket INTEGER PRIMARY KEY,
dt_hr_entrada DATETIME,
dt_hr_saida DATETIME,
placa VARCHAR(7)
)

CREATE TABLE tb_veiculo (
placa VARCHAR(7) PRIMARY KEY,
cpf VARCHAR(11),
cd_tp_automovel INTEGER,
FOREIGN KEY(cpf) REFERENCES tb_cliente (cpf)
)

CREATE TABLE tb_tp_motocicleta (
cd_tp_motocicleta INTEGER PRIMARY KEY,
tp_motocicleta VARCHAR(99)
)

CREATE TABLE tb_motocicleta (
placa VARCHAR(7) PRIMARY KEY,
cd_tp_motocicleta INTEGER,
FOREIGN KEY(placa) REFERENCES tb_veiculo (placa),
FOREIGN KEY(cd_tp_motocicleta) REFERENCES tb_tp_motocicleta (cd_tp_motocicleta)
)

CREATE TABLE tb_tp_automovel (
tp_automovel VARCHAR(99),
cd_tp_automovel INTEGER PRIMARY KEY
)

CREATE TABLE tb_tp_caminhao (
cd_tp_caminhao INTEGER PRIMARY KEY,
tp_caminhao VARCHAR(99)
)

CREATE TABLE tb_caminhao (
placa VARCHAR(7) PRIMARY KEY,
cd_tp_caminhao INTEGER,
FOREIGN KEY(cd_tp_caminhao) REFERENCES tb_tp_caminhao (cd_tp_caminhao)
)

ALTER TABLE tb_estacionamento ADD FOREIGN KEY(placa) REFERENCES tb_veiculo (placa)
ALTER TABLE tb_veiculo ADD FOREIGN KEY(cd_tp_automovel) REFERENCES tb_tp_automovel (cd_tp_automovel)
