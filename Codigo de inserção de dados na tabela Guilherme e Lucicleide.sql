CREATE DATABASE IF NOT EXISTS posto_guilherme_e_lucicleide;

USE posto_guilherme_e_lucicleide;

-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (CadastroCliente, CPFCliente, TelefoneCliente, RGCliente, NomeCliente)
VALUES 
('001', '12345678901', '412431342', '123456789', 'João da Silva'),
('002', '98765432109', '324323421', '987654321', 'Maria Oliveira'),
('003', '11122233344', '542134124', '111222333', 'Pedro Santos'),
('004', '44455566677', '645234325', '444555666', 'Ana Souza'),
('005', '88899977766', '432185213', '888999777', 'Carla Lima');

-- Inserindo dados na tabela Produto
INSERT INTO Produto (CodigoProduto, NomeProduto, DataFabricacao, Validade, Preco, QuantidadeProduto)
VALUES 
('001', 'Gasolina Comum', '2024-06-04', '2025-06-04', 5.50, 100),
('002', 'Óleo Lubrificante', '2024-06-04', '2025-06-04', 15.99, 50),
('003', 'Etanol', '2024-06-04', '2025-06-04', 4.00, 200),
('004', 'Diesel', '2024-06-04', '2025-06-04', 4.50, 150),
('005', 'Aditivo para Combustível', '2024-06-04', '2025-06-04', 8.99, 80);

-- Inserindo dados na tabela Vendedor
INSERT INTO Vendedor (CPFVendedor, NomeVendedor, TelefoneVendedor)
VALUES 
('12345678901', 'Pedro Silva', '421343243'),
('98765432109', 'Ana Oliveira', '276834514'),
('11122233344', 'Marcos Souza', '421454312'),
('44455566677', 'Carolina Lima', '4328574924'),
('88899977766', 'Rafael Santos', '346564245');

-- Inserindo dados na tabela Fornecedor
INSERT INTO Fornecedor (CNPJ, NomeFornecedor, TelefoneFornecedor, EnderecoFornecedor)
VALUES 
('12345678901234', 'Fax Combustíveis', '111111111', 'Rua Álvaro Silva, 123'),
('98765432109876', 'Carro Carroça', '222222222', 'Rua Bonifácio, 456'),
('11122233344455', 'Carro Novo', '333333333', 'Rua Carlos Inca, 789'),
('44455566677788', 'Fábrica Matheus', '444444444', 'Rua José Teodoro, 012'),
('88899977766655', 'Borracharia', '555555555', 'Rua Eslovaquia, 345');

-- Inserindo dados na tabela Compra
INSERT INTO Compra (fk_Cliente_CadastroCliente, fk_Produto_CodigoProduto, DataCompra, CodigoCompra, QuantidadeVenda, MetodoPagamento)
VALUES 
('001', '001', '2024-06-04', '001', 10, 'Cartão'),
('002', '002', '2024-06-04', '002', 5, 'Dinheiro'),
('003', '003', '2024-06-04', '003', 20, 'Dinheiro'),
('004', '004', '2024-06-04', '004', 15, 'Cartão'),
('005', '005', '2024-06-04', '005', 8, 'Dinheiro');

-- Inserindo dados na tabela Vende
INSERT INTO Vende (fk_Vendedor_CPFVendedor, fk_Produto_CodigoProduto)
VALUES 
('12345678901', '001'),
('98765432109', '002'),
('11122233344', '003'),
('44455566677', '004'),
('88899977766', '005');

-- Inserindo dados na tabela Fornece
INSERT INTO Fornece (fk_Fornecedor_CNPJ, fk_Produto_CodigoProduto, DataFornece)
VALUES 
('12345678901234', '001', '2024-06-04'),
('98765432109876', '002', '2024-06-04'),
('11122233344455', '003', '2024-06-04'),
('44455566677788', '004', '2024-06-04'),
('88899977766655', '005', '2024-06-04');
