-- Remove a tabela antiga, mesmo que exista
DROP TABLE IF EXISTS produtos;

-- Cria a tabela NOVA com a estrutura correta
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome_pizza VARCHAR(100) NOT NULL,
    ingredientes TEXT,
    preco DECIMAL(10,2) NOT NULL,
    ativo BOOLEAN DEFAULT TRUE
);

--Inserindo os dados
INSERT INTO produtos (nome_pizza, ingredientes, preco, ativo)
VALUES 
('Margherita', 'Massa de Tomate, Queijo mozzarella, Folhas de Manjericão fresco, Azeite de Oliva', 35.99, TRUE),
('Calabresa', 'Molho de tomate, Queijo mozzarella, Calabresa, Cebola', 29.99, FALSE),
('Portuguesa', 'Molho de tomate, Queijo mozzarella, Presunto, Ovo, Milho, Ervilha, Azeitona', 50.00, TRUE),
('Havaiana', 'Molho de tomate, Queijo mozzarella, Presunto, Abacaxi', 44.99, FALSE),
('Vegana Mediterrânea', 'Molho de tomate, tofu defumado, azeitonas pretas, pimentão vermelho, cebola roxa, orégano', 39.90, TRUE),
('Vegana Tropical', 'Molho de tomate, cogumelos frescos, abacaxi, milho verde, espinafre, azeite de oliva', 37.50, TRUE),
('Vegetariana Especial', 'Molho de tomate, mussarela, cogumelos, palmito, milho, ervilha, azeitonas', 42.00, TRUE),
('Quatro Queijos', 'Molho de tomate, mussarela, gorgonzola, parmesão, catupiry', 46.90, TRUE),
('Brigadeiro com Morango', 'Chocolate meio amargo, leite condensado, morangos frescos, granulado', 34.90, TRUE),
('Doce de Leite com Banana', 'Doce de leite, bananas caramelizadas, canela, queijo minas (opcional)', 32.50, TRUE);


INSERT INTO produtos (nome_pizza, ingredientes, preco, ativo)
VALUES
('Coca-Cola Lata 350ml', 'Refrigerante de cola', 6.50, TRUE),
('Coca-Cola 2L', 'Refrigerante de cola', 12.00, TRUE),
('Guaraná Antarctica Lata 350ml', 'Refrigerante de guaraná', 6.00, TRUE),
('Guaraná Antarctica 2L', 'Refrigerante de guaraná', 11.50, TRUE),
('Fanta Laranja Lata 350ml', 'Refrigerante sabor laranja', 5.50, TRUE),
('Sprite Lata 350ml', 'Refrigerante sabor limão', 5.50, TRUE);

-- Testando as consultas
SELECT * FROM produtos WHERE nome_pizza ILIKE '%vegana%';
SELECT * FROM produtos WHERE ingredientes ILIKE '%milho%';
SELECT * FROM produtos WHERE preco >= 30.00;
SELECT * FROM produtos WHERE ativo = FALSE;
SELECT * FROM produtos WHERE preco <= 6.00;
SELECT * FROM produtos WHERE nome_pizza ILIKE '%cola-co%';