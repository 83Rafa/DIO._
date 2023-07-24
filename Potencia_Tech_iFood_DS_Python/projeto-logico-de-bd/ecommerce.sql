-- criação do banco de dados para o cenário de E-commerce
-- DROP DATABASE e_commerce;
CREATE DATABASE IF NOT EXISTS e_commerce;
USE e_commerce;

CREATE TABLE clients(
	id_client		INT AUTO_INCREMENT PRIMARY KEY,
    first_name		VARCHAR(20),
    m_init			CHAR(1),
    last_name		VARCHAR(20),
    ssn				CHAR(11) NOT NULL,
    address			VARCHAR(60),
    dob				DATE,
    CONSTRAINT unique_cpf_client UNIQUE (ssn)
);

ALTER TABLE clients AUTO_INCREMENT = 1;

CREATE TABLE product(
	id_product			INT AUTO_INCREMENT PRIMARY KEY,
    product_name		VARCHAR(20),
    classification_kids	BOOLEAN DEFAULT False,
    category			ENUM('Outros', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') DEFAULT 'Outros',
    rating				FLOAT DEFAULT 0,
    size				VARCHAR(15),
    price				FLOAT
);

-- por se tratar de ecommerce dinheiro não foi colocado como forma de pagamento
CREATE TABLE payments(
	id_payment		INT AUTO_INCREMENT,
    id_pay_client	INT NOT NULL,
    payment_type	ENUM('Cartão', 'Transferência', 'Boleto', 'Pix') DEFAULT 'Cartão',
    PRIMARY KEY(id_payment, id_pay_client),
    CONSTRAINT fk_pay_client FOREIGN KEY (id_pay_client) REFERENCES clients(id_client)
);

CREATE TABLE orders(
	id_order		INT AUTO_INCREMENT PRIMARY KEY,
    id_odr_client	INT NOT NULL,
    id_odr_payment	INT,
    order_status	ENUM('Em andamento', 'Cancelado', 'Entregue') DEFAULT 'Em andamento',
    odr_description	VARCHAR(100),
    shippment		FLOAT,
    amount			INT DEFAULT 1,
    CONSTRAINT fk_orders_clients FOREIGN KEY (id_odr_client) REFERENCES clients(id_client),
    CONSTRAINT fk_odr_payment FOREIGN KEY (id_odr_payment) REFERENCES payments(id_payment)
);

CREATE TABLE product_storage(
	id_storage			INT AUTO_INCREMENT PRIMARY KEY, 
    quantity			INT DEFAULT 10,
    storage_location	VARCHAR(45)		
);

CREATE TABLE supplier(
	id_supplier		INT AUTO_INCREMENT PRIMARY KEY,
    corporate_name	VARCHAR(50) NOT NULL,
    ein				CHAR(14),
    contact			VARCHAR(30)NOT NULL,
    CONSTRAINT unique_supplier UNIQUE(ein)
);

-- EIN é o equivalente ao CNPJ, SSN ao CPF. Com um varchar(14) o campo serve para ambos
CREATE TABLE seller(
	id_seller		INT AUTO_INCREMENT PRIMARY KEY,
    social_name		VARCHAR(25) NOT NULL,
    trading_name	VARCHAR(25),
	ein_ssn			VARCHAR(14),
    address			VARCHAR(60),
    phone			CHAR(12)NOT NULL,
    CONSTRAINT unique_supplier UNIQUE(ein_ssn)
);

CREATE TABLE product_seller(
	id_ps_seller		INT,
    id_ps_product		INT,
    product_amount	INT DEFAULT 1,
    PRIMARY KEY (id_ps_seller, id_ps_product),
    CONSTRAINT fk_ps_seller FOREIGN KEY (id_ps_seller) REFERENCES seller(id_seller),
    CONSTRAINT fk_ps_product FOREIGN KEY (id_ps_product) REFERENCES product(id_product)
);

CREATE TABLE product_order(
	id_po_product	INT,
    id_po_order		INT,
    po_status		ENUM('Disponível', 'Sem Estoque') DEFAULT 'Disponível',
    PRIMARY KEY (id_po_product, id_po_order),
    CONSTRAINT fk_po_product FOREIGN KEY (id_po_product) REFERENCES product(id_product),
    CONSTRAINT fk_po_order FOREIGN KEY (id_po_order) REFERENCES orders(id_order)
);

CREATE TABLE product_storage_location(
	id_psl_product	INT,
    id_psl_storage	INT,
    location		VARCHAR(100),
    PRIMARY KEY (id_psl_product, id_psl_storage),
    CONSTRAINT fk_psl_product FOREIGN KEY (id_psl_product) REFERENCES product(id_product),
    CONSTRAINT fk_psl_storage FOREIGN KEY (id_psl_storage) REFERENCES product_storage(id_storage)
);

CREATE TABLE product_supplier(
	id_ps_product	INT,
    id_ps_supplier	INT,
    ps_amount		INT NOT NULL,
    PRIMARY KEY (id_ps_product, id_ps_supplier),
    CONSTRAINT fk_pspp_product FOREIGN KEY (id_ps_product) REFERENCES product(id_product),
    CONSTRAINT fk_pspp_supplier FOREIGN KEY (id_ps_supplier) REFERENCES supplier(id_supplier)
);
