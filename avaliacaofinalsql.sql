-- AVALIAÇÃO FINAL BANCO DE DADOS
-- QUESTÃO 1
SHOW DATABASEs;
USE academia_movimento;

-- QUESTÃO 2
SHOW TABLES;

-- QUESTÃO 3
SHOW CREATE TABLE alunos;

-- QUESTÃO 4  
SELECT COUNT(*) as TotalPagamettos
FROM pagamentos;

-- QUESTÃO 5
SELECT * FROM planos
ORDER BY valor_mensal DESC;

-- QUESTÃO 6
CREATE TABLE equipamentos(
id INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(60) not null,
marca varchar(60),
data_compra date DEFAULT current_timestamp,
em_uso boolean DEFAULT true
);


-- QUESTAO 7
ALTER TABLE alunos 
add telEfone varchar(15);

-- QUESTAO 8
DROP TABLE equipamentos;


select * from alunos;
-- QUESTÃO 9
INSERT INTO alunos (nome, email, data_matricula, data_nascimento, plano_id, ativo)
VALUES("Marina Rocha",  "mariana.r@email.com", curdate(), '1995-06-15', 2, DEFAULT);


-- QUESTAO 10
SELECT * FROM instrutores
WHERE salario < 3700;

UPDATE instrutores 
SET salario = salario + ( salario * 0.08)
WHERE salario < 3700;

-- QUESTAO 11


show create table inscricoes;

START TRANSACTION;
UPDATE inscricoes
SET status = 'cancelada'
WHERE aluno_id = 4;

select * from inscricoes where aluno_id = 4;
COMMIT;

-- QUESTAO 12
SELECT * FROM alunos;

SELECT nome, email, data_matricula FROM alunos
WHERE ativo = 1
ORDER BY data_matricula DESC;  

-- QUESTAO 13
SELECT * FROM instrutores; 

SELECT nome, salario FROM instrutores
WHERE especialidade != 'Yoga'
ORDER BY salario ASC;

-- QUESTAO 14
SELECT nome, valor_mensal
FROM planos
WHERE valor_mensal BETWEEN 100 AND 200;

-- QUESTAO 15
SELECT * FROM alunos 
WHERE nome LIKE 'A%' OR nome LIKE '%Souza';

-- QUESTAO 16
SELECT a.nome, p.nome
FROM alunos a
LEFT JOIN planos p
ON a.id = p.id;

-- QUESTAO 17
SELECT a.nome, i.nome 
FROM aulas a
JOIN instrutores i
ON a.instrutor_id = i.id
ORDER BY a.nome; 

-- QUESTAO 18
select * from aulas; 
select * from alunos;
select * from instrutores;
select * from inscricoes;

SELECT a.nome as 'Nome Aluno',  au.nome as 'Nome Aula', ins.nome as 'Nome Instrutor'
FROM alunos a
JOIN inscricoes i 
ON a.id = i.aluno_id
JOIN aulas au
ON au.id = i.aula_id
JOIN instrutores ins
ON ins.id = au.instrutor_id
ORDER BY a.nome;

-- QUESTAO 19
SELECT p.nome, count(a.id) as 'Quantidade Alunos'  
FROM planos p
JOIN alunos a
ON p.id  = a.plano_id
GROUP BY p.nome HAVING count(a.id) >= 1;

-- QUESTAO 20
SELECT especialidade, ROUND(AVG(salario), 2) as 'Media Salarial'
FROM instrutores
GROUP BY especialidade;

select * from instrutores;

-- QUESTAO 21
SELECT nome, count(i.id)
FROM aulas a
JOIN inscricoes i
ON a.id = i.aula_id
GROUP BY nome
HAVING count(i.id) >= 2;

-- QUESTAO 22
SELECT  a.nome 
FROM alunos a
JOIN planos p
ON a.plano_id = p.id
WHERE p.valor_mensal > (SELECT AVG(valor_mensal) 
		FROM planos);




-- QUESTAO 23
SELECT * FROM aulas;
SELECT ins.nome 
FROM instrutores ins
WHERE ins.id NOT IN (SELECT instrutor_id FROM aulas);








