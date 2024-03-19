drop database if exists pizzaria;

create database  pizzaria;

use  pizzaria;



create table cliente (
nome   varchar(60),
cpf  char(14),
endereço varchar(60),
id_cliente int primary key
) ;



insert into cliente values( 
("carlos","223.917.984-13","bairro cometa avenida zelia 245",1),
("bianca","172.237.384-19","bairro esperanca rua tal 346",2),
("josé","139.699.306-03","bairro nova rua xv  78",3),
("alvaro","309.209.107-29","bairro volta  rua nildo 45",4),
("renata","212.507.134-10","bairro lapa rua marcos 12",5));



create table pizza (
sabor varchar(60),
preco float(52),
ingredientes varchar(200),
id_pizza int primary key
);


insert into pizza values ( 
("calabresa",60.75,"mussarela,calabresa,oregano,azeite,manjericão",1),
("costela",70.90,"costela,mussarela,manjeiricão,azeite,cebola",2),
("4queijos",60.90,"gongonzola,provolone,catupiry,mussarela,azeite,manjeiricão",3),
("portuguesa",70.00,"mussarela,presunto,ovo,cebola,ervilha,milho,azeite,manjeiricão",4),
("frango c/ catupiry",75.90,"mussarela,frango,cebola,catupiry,azeite,manjeiricão",5));


create table acompanhamento (
acompanhamento varchar(60),
id_acompnhamento primary key
);

insert into acompanhamento values (
("fanta uva",1),
("coca-cola",2),
("cerveja sub-zero",3),
("guarana antartica zero",4),
("cerveja itaipava",5),
);



create table pedido (
qtd_pizzas int ,
id_cliente int foreign key,
id_acompanhamento int
id_pedido int primary key,
foreign key ( id_acompanhamento) references acompanhamento(id_acompanhamento)
foreign key (id_cliente) references cliente(id_cliente)
);

insert into pedido values  (  
(4,1,2),
(1,2,1),
(3,3,3),
(5,4,4),
(2,5,5),
(2,5,6));





create table entregar (
id_pedido int ,
foreign key (id_pedido) references pedido(id_pedido)
);

insert into entregar values
(1),
(2),
(3),
(4),
(5),
(6);


