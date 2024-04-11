create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco_produto DECIMAL(10, 2),
    descricao_produto VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Medicamentos', 'Produtos para tratamento de diversas condições médicas.'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais.'),
('Higiene', 'Produtos de higiene pessoal e doméstica.'),
('Alimentos', 'Alimentos e suplementos nutricionais.'),
('Higiene Oral', 'Produtos para cuidados com a saúde bucal.');

INSERT INTO tb_produtos (nome_produto, preco_produto, descricao_produto, id_categoria) VALUES
('Paracetamol', 10.50, 'Analgésico e antipirético.', 1),
('Shampoo', 15.00, 'Limpeza e cuidado dos cabelos.', 2),
('Creme Dental', 5.99, 'Proteção contra cáries e gengivite.', 5),
('Vitamina C', 25.75, 'Suplemento vitamínico.', 4),
('Sabonete', 3.49, 'Limpeza e higienização da pele.', 3),
('Protetor Solar', 35.90, 'Proteção contra os raios solares.', 2),
('Creme Hidratante', 20.00, 'Hidratação da pele.', 2),
('Escova Dental', 2.99, 'Higiene bucal.', 5);

SELECT * FROM tb_produtos WHERE preco_produto > 50.00;

SELECT * FROM tb_produtos WHERE preco_produto BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.*, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.*, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';








