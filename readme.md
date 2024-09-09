# Projeto de Banco de Dados - SQL/PostgreSQL

Desenvolvimento de Projeto de Banco de Dados com SQL/PostgreSQL. `Aula 7, Exercícios 01-15, Módulo 01 (SQL).` 

Instituição: [Digital College Brasil](https://digitalcollege.com.br/) (Fortaleza/CE) <br>
Curso: Data Analytics (Turma 18) <br>
Instrutora: [NayaraWakweski](https://github.com/NayaraWakewski) <br>

<br>

## Etapas de Desenvolvimento

### Enunciado dos Exercícios
![screenshot](/images/enunciado_1.png)
![screenshot](/images/enunciado_2.png)

<br>

## Restore do Banco de Dados
- Criar banco de dados: digital_restore (Interface gráfica). <br>
![screenshot](/images/create_database.png) <br>

- Fazer "Restore" do banco de dados (Interface gráfica). <br>
![screenshot](/images/restore.png) <br>

## Exercício 1
- Verifique o total de registros de cada tabela. <br>

- Comandos SQL <br>
```
SELECT * FROM corporativo.cargo; --(07 registros)
SELECT * FROM corporativo.departamento; --(02 registros)
SELECT * FROM corporativo.funcionario; --(13 registros)
SELECT * FROM corporativo.lotacao; --(13 registros)
``` 
<br>

- Visualização <br>

![screenshot](/images/corporativo.cargo.png) <br>
![screenshot](/images/corporativo.departamento.png) <br>
![screenshot](/images/corporativo.funcionario.png) <br>
![screenshot](/images/corporativo.lotacao.png) <br>

<br>

## Exercício 2
- Liste o nome e pretensão salarial dos funcionários. <br>

- Comandos SQL <br>
```
SELECT nome, pretensao_salarial FROM corporativo.funcionario;
```
<br>

- Visualização <br>

![screenshot](/images/ex2.png) <br>

<br>

## Exercício 3
- Liste o nome dos funcionários por ordem alfabética. <br>

- Comandos SQL <br>
```
SELECT nome FROM corporativo.funcionario
ORDER BY nome;
```
<br>

- Visualização <br>

![screenshot](/images/ex3.png) <br>

<br>

## Exercício 4
- Liste o nome e pretensão salarial dos funcionários por ordem de maior pretensão salarial. <br>

- Comandos SQL <br>
```
SELECT nome, pretensao_salarial FROM corporativo.funcionario
ORDER BY pretensao_salarial DESC;
```
<br>

- Visualização <br>

![screenshot](/images/ex4.png) <br>

<br>

## Exercício 5
- Quais os funcionários que são PCD? <br>

- Comandos SQL <br>
```
SELECT * FROM corporativo.funcionario
    WHERE pcd = true;
```
<br>

- Visualização <br>

![screenshot](/images/ex5.png) <br>

<br>

## Exercício 6
- Quais os funcionários tem pretensão salarial maior que R$3.000? <br>

- Comandos SQL <br>
```
SELECT * FROM corporativo.funcionario
	WHERE pretensao_salarial > 3000
	ORDER BY pretensao_salarial;
```
<br>

- Visualização <br>

![screenshot](/images/ex6.png) <br>

<br>

## Exercício 7
- Quais os funcionários tem pretensão salarial maior e igual que R$5.000 e PCD? <br>

- Comandos SQL <br>
```
SELECT * FROM corporativo.funcionario
	WHERE pretensao_salarial >= 5000 AND pcd = true
	ORDER BY pretensao_salarial;
```
<br>

- Visualização <br>

![screenshot](/images/ex7.png) <br>

<br>

## Exercício 8
- Qual média de pretensão salarial? <br>

- Comandos SQL <br>
```
SELECT AVG(pretensao_salarial)::NUMERIC(8,2) FROM corporativo.funcionario;
```
<br>

- Visualização <br>

![screenshot](/images/ex8.png) <br>

<br>

## Exercício 9
- Qual a maior pretensão salarial? <br>

- Comandos SQL <br>
```
SELECT MAX(pretensao_salarial) FROM corporativo.funcionario;
```
<br>

- Visualização <br>

![screenshot](/images/ex9.png) <br>

<br>

## Exercício 10
- Qual o funcionário que registrou a maior pretensão salarial? <br>

- Comandos SQL <br>
```
SELECT nome, pretensao_salarial FROM corporativo.funcionario
	ORDER BY pretensao_salarial DESC
	LIMIT 1;
```
<br>

- Visualização <br>

![screenshot](/images/ex10.png) <br>

<br>

## Exercício 11
- Liste o nome dos cargos e respectivos salários? <br>

- Comandos SQL <br>
```
SELECT cargo.nome, lotacao.salario 
FROM corporativo.cargo
INNER JOIN corporativo.lotacao ON cargo.id = lotacao.id_cargo
ORDER BY lotacao.salario DESC;
```
<br>

- Visualização <br>

![screenshot](/images/ex11.png) <br>

<br>

## Exercício 12
- Liste o nome dos funcionários com respectivos cargos e salários? <br>

- Comandos SQL <br>
```
SELECT funcionario.nome, cargo.nome, lotacao.salario
FROM corporativo.cargo
INNER JOIN corporativo.lotacao ON cargo.id = lotacao.id_cargo
INNER JOIN corporativo.funcionario ON funcionario.id = lotacao.id_funcionario
ORDER BY lotacao.salario DESC;
```
<br>

- Visualização <br>

![screenshot](/images/ex12.png) <br>

<br>




## Meus Contatos

- Business Card - [Renato Albuquerque](https://rma-contacts.vercel.app/)
- Linkedin - [renato-malbuquerque](https://www.linkedin.com/in/renato-malbuquerque/)
- Discord - [Renato Albuquerque#0025](https://discordapp.com/users/992621595547938837)