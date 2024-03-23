DROP DATABASE IF EXISTS pizzaria;

CREATE DATABASE pizzaria;

USE pizzaria;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60),
    cpf CHAR(14),
    endereco VARCHAR(60)
);

INSERT INTO cliente (nome, cpf, endereco) VALUES 
('carlos', '223.917.984-13', 'bairro cometa avenida zelia 245'),
('bianca', '172.237.384-19', 'bairro esperanca rua tal 346'),
('josé', '139.699.306-03', 'bairro nova rua xv 78'),
('alvaro', '309.209.107-29', 'bairro volta rua nildo 45'),
('renata', '212.507.134-10', 'bairro lapa rua marcos 12');

CREATE TABLE pizza (
    id_pizza INT PRIMARY KEY AUTO_INCREMENT,
    sabor VARCHAR(60),
    preco FLOAT(10,2),
    ingredientes VARCHAR(200)
);

INSERT INTO pizza (sabor, preco, ingredientes) VALUES 
('calabresa', 60.75, 'mussarela, calabresa, oregano, azeite, manjericao'),
('costela', 70.90, 'costela, mussarela, manjeiricão, azeite, cebola'),
('4queijos', 60.90, 'gongonzola, provolone, catupiry, mussarela, azeite, manjeiricão'),
('portuguesa', 70.00, 'mussarela, presunto, ovo, cebola, ervilha, milho, azeite, manjeiricão'),
('frango c/ catupiry', 75.90, 'mussarela, frango, cebola, catupiry, azeite, manjeiricão');

CREATE TABLE acompanhamento (
    id_acompanhamento INT PRIMARY KEY AUTO_INCREMENT,
    acompanhamento VARCHAR(60)
);

INSERT INTO acompanhamento (acompanhamento) VALUES 
('fanta uva'),
('coca-cola'),
('cerveja sub-zero'),
('guarana antartica zero'),
('cerveja itaipava');

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    qtd_pizzas INT,
    id_cliente INT,
    id_acompanhamento INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_acompanhamento) REFERENCES acompanhamento(id_acompanhamento)
);

INSERT INTO pedido (qtd_pizzas, id_cliente, id_acompanhamento) VALUES 
(4, 1, 2),
(1, 2, 1),
(3, 3, 3),
(5, 4, 4),
(2, 5, 5),
(2, 5, 5);

CREATE TABLE entregar (
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

INSERT INTO entregar (id_pedido) VALUES 
(1),
(2),
(3),
(4),
(5),
(6);
