--Ex.3 Crie uma tabela chamda proprietario, com no minímo os campos: (Nome, Sobrenome, Endereco);
--Ex.4 Crie uma tabela chamda Imovel, com no minímo os campos: (Tipo_imovel (Casa, Apto, Galpão), Valor, Observacoes, Detalhes, Endereco);
--Ex.5 Crie a coluna id do tipo int, na tabela proprietario e defina como chave primaria (Primary Key)
--Ex.6 Crie a coluna id do tipo int, na tabela Imovel e defina como chave primaria (Primary Key)
--Ex.7 Crie o script para incluir as colunas de telefone e endereco, do tipo varchar, na tabela proprietario, utilizando o alter table.
--Ex.8 Crie o script para excluir a coluna detalhes, na tabela Imovel, utilizando o alter table.
--Ex.9 Crie a coluna IpProprietario na tabela imovel e defina como uma fk da tabela proprietario.
--Ex.10 Crie o Script para excluir as tabelas proprietario e Imovel


--Ex. 3:
CREATE TABLE PROPIETARIO (
	NOME VARCHAR(20),
	SOBRENOME VARCHAR(20),
	ENDERECO VARCHAR(100)
);

--Ex. 4:
CREATE TABLE IMOVEL (
	TIPO_IMOVEL VARCHAR(20),
	VALOR MONEY,
	OBSERVACOES TEXT,
	DETALHES VARCHAR(100),
	ENDERECO VARCHAR(100)
);

--Ex. 5:
ALTER TABLE PROPIETARIO ADD COLUMN ID SERIAL;
ALTER TABLE PROPIETARIO ADD CONSTRAINT PK_PROPIETARIO_ID PRIMARY KEY (ID);

--Ex. 6:
ALTER TABLE IMOVEL ADD COLUMN ID SERIAL;
ALTER TABLE IMOVEL ADD CONSTRAINT PK_IMOVEL_ID PRIMARY KEY (ID);

--Ex. 7:
ALTER TABLE PROPIETARIO ADD COLUMN TELEFONE VARCHAR(20);
ALTER TABLE PROPIETARIO ADD COLUMN ENDERECO_COMERCIAL VARCHAR(100);

--Ex. 8:
ALTER TABLE IMOVEL DROP COLUMN DETALHES;

--Ex. 9:
ALTER TABLE IMOVEL ADD COLUMN ID_PROPIETARIO SERIAL;
ALTER TABLE IMOVEL ADD CONSTRAINT FK_ID_PROPIETARIO FOREIGN KEY (ID_PROPIETARIO) REFERENCES PROPIETARIO (ID);  

--Ex. 10:
DROP TABLE PROPIETARIO;
DROP TABLE IMOVEL;
