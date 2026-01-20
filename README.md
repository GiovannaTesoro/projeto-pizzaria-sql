#  Projeto Pizzaria – Meu Primeiro Banco de Dados

Este foi meu primeiro projeto prático com **PostgreSQL** e **pgAdmin4**, criado durante meus estudos de modelagem relacional e SQL.  
Nele, simulei um sistema de pedidos de uma pizzaria, com controle de clientes, produtos (pizzas e bebidas), pedidos e itens do pedido.

##  Estrutura dos arquivos
Cada parte do banco foi salva em um arquivo separado, na ordem recomendada para execução:

- `01_usuarios.sql` → Tabela de clientes cadastrados  
- `02_produtos.sql` → Pizzas, bebidas e preços  
- `03_pedidos.sql` → Registro de pedidos (com data/hora)  
- `04_itens_pedido.sql` → Relacionamento entre pedidos e produtos  

>  **Dica**: Execute os arquivos na ordem acima para evitar erros de dependência (ex: não crie `pedidos` antes de `usuarios`).
