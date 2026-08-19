CREATE TABLE tb_cidade (
  cd_cidade INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_estado_cd_estado CHAR(2) NOT NULL,
  cidade CHAR(99) NULL,
  PRIMARY KEY(cd_cidade),
  INDEX tb_cidade_FKIndex1(tb_estado_cd_estado)
);

CREATE TABLE tb_estado (
  cd_estado CHAR(2) NOT NULL AUTO_INCREMENT,
  estado CHAR(99) NULL,
  PRIMARY KEY(cd_estado)
);

CREATE TABLE tb_filial (
  cd_filial INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  filial CHAR(99) NULL,
  PRIMARY KEY(cd_filial)
);

CREATE TABLE tb_produto (
  cd_produto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome CHAR(99) NULL,
  valor DECIMAL(8,2)) NULL,
  PRIMARY KEY(cd_produto)
);

CREATE TABLE tb_venda (
  nr_venda INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_vendedor_cd_vendedor INTEGER UNSIGNED NOT NULL,
  tb_produto_cd_produto INTEGER UNSIGNED NOT NULL,
  tb_cidade_cd_cidade INTEGER UNSIGNED NOT NULL,
  dt_venda DATE NULL,
  vl_venda DECIMAL(8,2) NULL,
  PRIMARY KEY(nr_venda),
  INDEX tb_venda_FKIndex1(tb_cidade_cd_cidade),
  INDEX tb_venda_FKIndex2(tb_produto_cd_produto),
  INDEX tb_venda_FKIndex3(tb_vendedor_cd_vendedor)
);

CREATE TABLE tb_vendedor (
  cd_vendedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_filial_cd_filial INTEGER UNSIGNED NOT NULL,
  vendedor CHAR(99) NULL,
  PRIMARY KEY(cd_vendedor),
  INDEX tb_vendedor_FKIndex2(tb_filial_cd_filial)
);


