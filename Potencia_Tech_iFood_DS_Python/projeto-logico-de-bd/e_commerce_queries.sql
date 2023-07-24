USE e_commerce;

-- Quais clientes tem iniciais do nome do meio igual a "B" ou não possuem nomes do meio?
SELECT * FROM Clients 
WHERE m_init = 'B' OR m_init IS NULL;

-- Quais produtos custam mais de 1000 na categoria "Vestimenta"?
SELECT * FROM product
WHERE price > 1000 AND category = 'Vestimenta';

-- Quantos pedidos foram feitos por cada cliente?
SELECT 	id_odr_client AS Nº_Cliente, COUNT(id_order) AS Qtde_Pedidos
FROM 	orders 
GROUP BY id_odr_client;

-- Algum vendedor também é fornecedor?
SELECT COUNT(*)
FROM seller, supplier
WHERE ein = ein_ssn;

-- Qual o total em valores dos produtos em categoria "Outros"?
SELECT 	SUM(price) AS Total_em_$
FROM 	product 
GROUP BY category
HAVING 	category = "Alimentos";

-- Quais produtos são fornecidos pelo vendedor "Gemialidades Weasley"?
SELECT 		*
FROM 		seller 
INNER JOIN 	product_seller ON id_ps_seller = id_seller
WHERE		trading_name = 'Gemialidades Weasley';
select * from product_supplier;

-- Relação de produtos fornecedores e estoques;
SELECT 		corporate_name AS Fornecedor, product_name AS Produto , ps_amount AS Estoque
FROM 		supplier 
INNER JOIN 	product_supplier ON id_ps_supplier = id_supplier
INNER JOIN 	product on id_ps_product = id_product;

-- Relação de produtos vendedores e produtos em estoques;
SELECT 		social_name AS Fornecedor, product_name AS Produto , product_amount AS Estoque
FROM 		seller 
INNER JOIN 	product_seller ON id_ps_seller = id_seller
INNER JOIN 	product on id_ps_product = id_product;

-- Quantos clientes são da Inglaterra?
SELECT COUNT(*) 
FROM Clients 
WHERE address LIKE '%Ingland%';

-- Quantos clientes não são da Inglaterra?
SELECT COUNT(*) 
FROM Clients 
WHERE address NOT LIKE '%Ingland%';

-- Qual o endereço dos clientes de fora da Inglaterra?
SELECT CONCAT(first_name, ' ', last_name) AS Cliente, address AS Endereço 
FROM Clients 
WHERE address NOT LIKE '%Ingland%';

-- Qual o total de itens comprados com a soma dos fretes, agrupados pela situação do pedido?
select * from orders;
SELECT 	id_order, category,
		SUM(amount) AS Total_de_Itens,
		SUM(shippment) AS Total_Frete
FROM    orders
LEFT JOIN	product_order ON id_po_order = id_order
LEFT JOIN 	product ON id_product = id_po_product
GROUP BY category;

-- Situação das últimas 5 vendas com: Nº do Pedido, Cliente, Produto, Catedoria, Quantidade, Preço com frete incluso e Forma de Pagamento
SELECT	o.id_order AS Pedido, CONCAT(c.first_name, ' ', c.last_name) AS Cliente, 
		prod.product_name AS Produto, prod.category AS Categoria, 
		o.amount AS Quantidade, ROUND((prod.price + o.shippment), 2) AS Preço, 
        o.order_status AS Situação, pay.payment_type AS Forma_de_Pagamento
FROM 	clients c 
INNER JOIN orders o ON id_odr_client = id_client
INNER JOIN product_order po ON id_po_order = id_order
INNER JOIN product prod ON id_product = id_po_product
INNER JOIN payments pay ON id_payment = id_odr_payment
ORDER BY id_order DESC LIMIT 5;