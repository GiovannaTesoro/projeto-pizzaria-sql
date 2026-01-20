DROP TABLE IF EXISTS itens_pedido;

CREATE TABLE itens_pedido (
    id SERIAL PRIMARY KEY, -- número automático (1,2,3...)
    pedido_id INT NOT NULL, -- id do pedido (vem da tabela pedidos)
    produto_id INT NOT NULL, -- id do produto (vem da tabela produtos)
    quantidade INT NOT NULL DEFAULT 1, -- quantidade comprada / mínimo = 1
    preco_unitario DECIMAL(10,2) NOT NULL, -- preço do produto no momento da compra
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id), -- conecta ao pedido
    FOREIGN KEY (produto_id) REFERENCES produtos(id) -- conecta ao produto
);


SELECT * FROM itens_pedido;

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario)
VALUES (1, 2, 1, 29.99);

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario)
VALUES (1, 16, 1, 5.50);

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario)
VALUES (1, 6, 1, 39.90);

SELECT 
    p.id AS pedido,
    u.nome AS cliente,
    SUM(i.quantidade * i.preco_unitario) AS total_pedido
FROM pedidos p
JOIN usuarios u ON u.id = p.usuario_id
JOIN itens_pedido i ON i.pedido_id = p.id
GROUP BY p.id, u.nome
ORDER BY p.id;

