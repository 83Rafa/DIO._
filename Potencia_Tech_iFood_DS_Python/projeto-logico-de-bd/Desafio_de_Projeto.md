<div align="justify">
    <figure>
    <img src="https://hermes.dio.me/tracks/49c408ad-800d-416d-b77c-681add1be673.png" class="logo" width="80" align="right">
  </figure>
    <h1>Projeto Lógico de Banco de Dados</h1>
</div>
<div align="center">
  <img src="https://prodatasystems.com.br/wp-content/uploads/2020/06/banner-banco-de-dados.jpg" width="1000" height="280">
</div>
<div>
  <h3>Descrição do Desafio</h3>
  <p>Replicar a modelagem do projeto lógico de banco de dados para o cenário de e-commerce. Com atenção às definições de chave primária e estrangeira, assim como as constraints presentes no cenário modelado. Dentro desta modelagem haverá relacionamentos presentes no modelo EER. Além da aplicação do mapeamento de modelos aos refinamentos propostos no módulo de modelagem conceitual.</p>
  <p>Realização do Script SQL para criação do esquema do banco de dados. Posteriormente, a persistência de dados para realização de testes. Especificação de queries mais complexas como as queries SQL com as cláusulas abaixo:</p>
  <ol>
    <li>Recuperações simples com <strong>SELECT Statement</strong></li>
    <li>Filtros com <strong>WHERE Statement</strong></li>
    <li>Crição de expressões para gerar atributos derivados</li>
    <li>Definição das ordenações dos dados com <strong>ORDER BY</strong></li>
    <li>Condições de filtros aos grupos – <strong>HAVING Statement</strong></li>
    <li>Criação de junções entre tabelas para fornecer uma perspectiva mais complexa dos dados</li>
  </ol>
  <h3>Alguns Exemplos das QUERIES realizadas:</h3>
</div>
<br>


- SELECT  Statement:
  ~~~
  SELECT * FROM product
  WHERE price > 1000 AND category = 'Vestimenta';
  ~~~
- Filtro WHERE:
  ~~~
  SELECT COUNT(*)
  FROM seller, supplier
  WHERE ein = ein_ssn;
  ~~~
- Expressões mais complexas, con junções e a utilização de odenações como ORDER BY:
  ~~~
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
  ~~~

<footer>
  <div class="logotipo" align="right">
    <figure>
      <img src="https://hermes.digitalinnovation.one/assets/diome/logo-minimized.png" alt="logo dio minimizada" class="sc-TRNrF kCkrow" width="80">
    </figure>
  </div>
  <div class="small-subtitle" align="right">
    <p><small><i>Formação DIO.</i></small></p>
  </div>
</footer>
