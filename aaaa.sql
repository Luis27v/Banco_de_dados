CREATE TABLE tb_cargo (
  cd_cargo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cargo CHAR(99) NULL,
  PRIMARY KEY(cd_cargo)
);

CREATE TABLE tb_estacionamento (
  ticket INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_veiculo_placa CHAR(7) NOT NULL,
  entrada DATETIME NULL,
  saida DATETIME NULL,
  PRIMARY KEY(ticket),
  INDEX tb_estacionamento_FKIndex1(tb_veiculo_placa)
);

CREATE TABLE tb_funcionario (
  cpf CHAR(11) NOT NULL AUTO_INCREMENT,
  tb_Setor_cd_setor INTEGER UNSIGNED NOT NULL,
  tb_cargo_cd_cargo INTEGER UNSIGNED NOT NULL,
  nome CHAR(99) NULL,
  PRIMARY KEY(cpf),
  INDEX tb_funcionario_FKIndex1(tb_cargo_cd_cargo),
  INDEX tb_funcionario_FKIndex2(tb_Setor_cd_setor)
);

CREATE TABLE tb_marca (
  marca_2 INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  marca CHAR(99) NULL,
  PRIMARY KEY(marca_2)
);

CREATE TABLE tb_modelo (
  cd_modelo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_marca_marca_2 INTEGER UNSIGNED NOT NULL,
  modelo CHAR(99) NULL,
  PRIMARY KEY(cd_modelo),
  INDEX tb_modelo_FKIndex1(tb_marca_marca_2)
);

CREATE TABLE tb_Setor (
  cd_setor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  setor CHAR(99) NULL,
  PRIMARY KEY(cd_setor)
);

CREATE TABLE tb_veiculo (
  placa CHAR(7) NOT NULL AUTO_INCREMENT,
  tb_modelo_cd_modelo INTEGER UNSIGNED NOT NULL,
  ano YEAR NULL,
  PRIMARY KEY(placa),
  INDEX tb_veiculo_FKIndex1(tb_modelo_cd_modelo)
);


