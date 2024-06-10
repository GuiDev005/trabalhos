CREATE DATABASE IF NOT EXISTS posto_guilherme_e_lucicleide;

USE posto_guilherme_e_lucicleide;

CREATE TABLE cliente (
    CadastroCliente VARCHAR(3) PRIMARY KEY,
    CPFCliente VARCHAR(14),
    TelefoneCliente VARCHAR(19),
    RGCliente VARCHAR(12),
    NomeCliente VARCHAR(60)
);

CREATE TABLE Produto (
    CodigoProduto VARCHAR(3) PRIMARY KEY,
    NomeProduto VARCHAR(30),
    DataFabricacao DATE,
    Validade DATE,
    Preco FLOAT(10,2),
    QuantidadeProduto INTEGER(5)
);

CREATE TABLE Vendedor (
    CPFVendedor VARCHAR(14) PRIMARY KEY,
    NomeVendedor VARCHAR(60),
    TelefoneVendedor VARCHAR(19)
);

CREATE TABLE Fornecedor (
    CNPJ VARCHAR(18) PRIMARY KEY,
    NomeFornecedor VARCHAR(30),
    TelefoneFornecedor VARCHAR(19),
    EnderecoFornecedor VARCHAR(60)
);

CREATE TABLE Compra (
    fk_Cliente_CadastroCliente VARCHAR(3),
    fk_Produto_CodigoProduto VARCHAR(3),
    DataCompra DATE,
    CodigoCompra VARCHAR(3) PRIMARY KEY,
    QuantidadeVenda INTEGER(10),
    MetodoPagamento VARCHAR(15)
);

CREATE TABLE Vende (
    fk_Vendedor_CPFVendedor VARCHAR(14),
    fk_Produto_CodigoProduto VARCHAR(3)
);

CREATE TABLE Fornece (
    fk_Fornecedor_CNPJ VARCHAR(18),
    fk_Produto_CodigoProduto VARCHAR(3),
    DataFornece DATE
);
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_2
    FOREIGN KEY (fk_Cliente_CadastroCliente)
    REFERENCES Cliente (CadastroCliente)
    ON DELETE RESTRICT;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_3
    FOREIGN KEY (fk_Produto_CodigoProduto)
    REFERENCES Produto (CodigoProduto)
    ON DELETE SET NULL;
 
ALTER TABLE Vende ADD CONSTRAINT FK_Vende_1
    FOREIGN KEY (fk_Vendedor_CPFVendedor)
    REFERENCES Vendedor (CPFVendedor)
    ON DELETE RESTRICT;
 
ALTER TABLE Vende ADD CONSTRAINT FK_Vende_2
    FOREIGN KEY (fk_Produto_CodigoProduto)
    REFERENCES Produto (CodigoProduto)
    ON DELETE SET NULL;
 
ALTER TABLE Fornece ADD CONSTRAINT FK_Fornece_1
    FOREIGN KEY (fk_Fornecedor_CNPJ)
    REFERENCES Fornecedor (CNPJ)
    ON DELETE RESTRICT;
 
ALTER TABLE Fornece ADD CONSTRAINT FK_Fornece_2
    FOREIGN KEY (fk_Produto_CodigoProduto)
    REFERENCES Produto (CodigoProduto)
    ON DELETE SET NULL;