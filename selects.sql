SELECT pedido.id_pedido, cliente.nome AS cliente, pizza.sabor AS pizza, acompanhamento.acompanhamento AS bebida
FROM pedido
INNER JOIN cliente ON pedido.id_cliente = cliente.id_cliente
INNER JOIN pizza ON pedido.id_pizza = pizza.id_pizza
INNER JOIN acompanhamento ON pedido.id_acompanhamento = acompanhamento.id_acompanhamento
INNER JOIN entregar ON pedido.id_pedido = entregar.id_pedido;
