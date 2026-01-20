

-- -> apague a tabela se ela existir 
DROP TABLE IF EXISTS usuarios; 

CREATE TABLE usuarios(
id SERIAL PRIMARY KEY,
nome VARCHAR(100)NOT NULL, -- "NOT NULL" -> campo obrigatório 
email VARCHAR(50)NOT NULL UNIQUE, -- "UNIQUE" -> não pode se repetir  
telefone VARCHAR(20),
idade INTEGER, -- 'INTEGER' -> apenas números inteiros
data_nascimento DATE,
endereco VARCHAR(100),
bairro VARCHAR(50),
genero VARCHAR(20),
data_cadastro DATE DEFAULT CURRENT_DATE, -- "DEFAULT CURRENT_DATE" ->Preenche automaticamente com a data de hoje
ativo boolean DEFAULT TRUE --" DEFAULT TRUE" ->Assume automaticamente que algo é verdadeiro
);

INSERT INTO usuarios(nome,email,telefone,idade,data_nascimento,endereco,bairro,genero, ativo)
VALUES

('Bruno Martins','bruno.martins@gmail.com', '(21)92345-6785', 30, '1995-05-12', 'Rua das Laranjeiras, 45', 'Jardim América', 'M', false),
('Camila Ferreira', 'camila.ferreira@gmail.com', '(11)912x-xxxx', 22,'2001-08-23', 'Av. Paulista, 1020', 'Bela Vista', 'Outro', true),
('Diego Almeida', 'diego.almeida@emailgmail.com', '(xx)93456-7890', 31, '1992-03-14', 'Rua do Sol, 210', 'Centro', 'M', true),
('Fernanda Rocha', 'fernanda.rocha@emailgmail.com', '(41)94567-8901', 26, '1997-11-05', 'Rua das Acácias, 88', 'Mercês', 'F', true),
('Gabriel Costa', 'gabriel.costa@emailgmail.com', '(51)95678-9012', 24, '1999-07-30', 'Av. Brasil, 500', 'Três Figueiras', 'M', false),
('Isabela Lima', 'isabela.lima@emailgmail.com', '(61)96789-0123', 29, '1994-02-19', 'Rua das Palmeiras, 77', 'xxxxxx', 'F', true),
('João Pedro Santos', 'joao.santos@emailgmail.com', '(71)97890-1234', 27, '1996-12-11', 'Rua das Rosas, 300', '', 'M', true),
('Larissa Nunes', 'larissa.nunes@emailgmail.com', '(81)98901-2345', 23, '2000-06-22', 'Av. Boa Viagem, 150', 'Boa Viagem', 'F', false),
('Matheus Ribeiro', 'matheus.ribeiro@emailgmail.com', '(91)xxxx2-3456',22, '1998-09-15', 'Rua Amazonas, 420', 'Cidade Velha', 'M', true);

DELETE FROM usuarios WHERE nome = 'Camila Ferreira';

INSERT INTO usuarios(nome,email,telefone,idade,data_nascimento,endereco,bairro,genero,ativo)
VALUES(');
