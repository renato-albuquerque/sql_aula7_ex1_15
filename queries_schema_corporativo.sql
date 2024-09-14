-- sql class 7, exercises 1 to 15.

-- bd: digital_restore
-- schema: corporativo

-- Exercise 01
SELECT * FROM corporativo.cargo; --(07 registros)
SELECT * FROM corporativo.departamento; --(02 registros)
SELECT * FROM corporativo.funcionario; --(13 registros)
SELECT * FROM corporativo.lotacao; --(13 registros)
-- OR
SELECT COUNT(*) FROM corporativo.cargo;
SELECT COUNT(*) FROM corporativo.departamento;
SELECT COUNT(*) FROM corporativo.funcionario;
SELECT COUNT(*) FROM corporativo.lotacao;

-- Exercise 02
SELECT nome, pretensao_salarial 
FROM corporativo.funcionario;

-- Exercise 03
SELECT nome FROM corporativo.funcionario
ORDER BY nome;

-- Exercise 04
SELECT nome, pretensao_salarial 
FROM corporativo.funcionario
ORDER BY pretensao_salarial DESC;

-- Exercise 05
SELECT * FROM corporativo.funcionario
WHERE pcd = true;
-- OR
SELECT nome, pcd
FROM corporativo.funcionario
WHERE pcd IS true;

-- Exercise 06
SELECT * FROM corporativo.funcionario
WHERE pretensao_salarial > 3000
ORDER BY pretensao_salarial;

-- Exercise 07
SELECT * FROM corporativo.funcionario
WHERE pretensao_salarial >= 5000 AND pcd = true
ORDER BY pretensao_salarial;

-- Exercise 08
SELECT AVG(pretensao_salarial)::NUMERIC(8,2) 
FROM corporativo.funcionario;

-- Exercise 09
SELECT MAX(pretensao_salarial) 
FROM corporativo.funcionario;

-- Exercise 10
SELECT nome, pretensao_salarial 
FROM corporativo.funcionario
ORDER BY pretensao_salarial DESC
LIMIT 1;

-- Exercise 11
SELECT cargo.nome, lotacao.salario 
FROM corporativo.cargo
INNER JOIN corporativo.lotacao 
ON cargo.id = lotacao.id_cargo
ORDER BY lotacao.salario DESC;

-- Exercise 12
SELECT funcionario.nome, cargo.nome, lotacao.salario
FROM corporativo.cargo
INNER JOIN corporativo.lotacao 
ON cargo.id = lotacao.id_cargo
INNER JOIN corporativo.funcionario 
ON funcionario.id = lotacao.id_funcionario
ORDER BY lotacao.salario DESC;

-- Exercise 13
SELECT funcionario.nome, cargo.nome, departamento.nome
FROM corporativo.cargo
INNER JOIN corporativo.lotacao 
ON cargo.id = lotacao.id_cargo
INNER JOIN corporativo.funcionario 
ON funcionario.id = lotacao.id_funcionario
INNER JOIN corporativo.departamento 
ON departamento.id = lotacao.id_departamento
ORDER BY departamento.nome, cargo.nome;

-- Exercise 14
SELECT funcionario.nome, cargo.nome, lotacao.salario
FROM corporativo.lotacao
INNER JOIN corporativo.funcionario 
ON funcionario.id = lotacao.id_funcionario
INNER JOIN corporativo.cargo 
ON cargo.id = lotacao.id_cargo
WHERE cargo.nome = 'Analista de Dados';

-- Exercise 15
SELECT funcionario.nome, cargo.nome
FROM corporativo.lotacao
INNER JOIN corporativo.funcionario 
ON funcionario.id = lotacao.id_funcionario
INNER JOIN corporativo.cargo 
ON cargo.id = lotacao.id_cargo
WHERE (cargo.nome = 'Analista de Dados')
OR (cargo.nome = 'Analista Contábil')
ORDER BY cargo.nome;
