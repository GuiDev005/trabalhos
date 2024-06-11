USE posto_guilherme_e_lucicleide;


/*Mostra uma consulta de todos clientes cadastrados no sistema.*/

SELECT *FROM cliente;
SELECT *FROM produto;
SELECT *FROM compra;
SELECT *FROM compra WHERE DataCompra > '2024-05-30';





/*Faz um relatório que mostra alguns dados de produtos e cria um novo atributo derivado que mostra o valor total do estoque.*/


SELECT 
    NomeProduto,
    QuantidadeProduto,
    Preco,
    DataFabricacao,
    Validade,
    (QuantidadeProduto * Preco) AS ValorTotalEstoque
FROM 
    Produto
WHERE
    QuantidadeProduto < 100
ORDER BY 
    NomeProduto;



/*Faz um relatório de compras, onde tem o nome do cliente e seus dados, informações dos produtos, dados de fornecedor e algumas datas.*/


SELECT 
    c.CadastroCliente AS CadastroCliente,
    c.NomeCliente AS NomeCliente,
    p.NomeProduto AS NomeProduto,
    co.DataCompra AS DataCompra,
    co.QuantidadeVenda AS Quantidade,
    co.MetodoPagamento AS MetodoPagamento,
    (co.QuantidadeVenda * p.Preco) AS TotalVenda,
    f.DataFornece AS DataFornece,
    fo.CNPJ AS CNPJ,
    fo.NomeFornecedor AS NomeFornecedor
    
FROM 
    Compra co
JOIN 
    Cliente c ON co.fk_Cliente_CadastroCliente = c.CadastroCliente
JOIN 
    Produto p ON co.fk_Produto_CodigoProduto = p.CodigoProduto
JOIN 
    Fornece f ON p.CodigoProduto = f.fk_Produto_CodigoProduto
JOIN
    Fornecedor fo ON f.fk_Fornecedor_CNPJ = fo.CNPJ
ORDER BY 
    c.NomeCliente, co.DataCompra;











