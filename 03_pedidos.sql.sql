drop table pedidos;

CREATE TABLE pedidos(
id SERIAL PRIMARY KEY, -- O serial serve para uma continuação de números inteiros essa linha seria o número do pedido
usuario_id INT NOT NULL, -- mesmo id da tabela de usuarios e o INT se trata de números inteiros
data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --esse timestamp se trata do horário com ano, mês,horas,minutos e segundos
FOREIGN KEY(usuario_id) REFERENCES usuarios(id) -- essa linha garante que não exitam pedidos fantasmas, 
);