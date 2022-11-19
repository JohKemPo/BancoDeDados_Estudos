# Introdução a SQL

<br>

    - Baseado em álgebra relacional.
    
    Dividida em subgrupos:

    - DQL ( Data query language - consulta de dados )
    - DML ( Data manipulation language - manipulaçao de dados )
    - DDL ( Data definition language - definição de dados )
    - DCL ( Data control language - controle de dados )
    - DTL ( Data transaction language - trasação de dados "operações" )

<br>

## DQL

- Apenas um comando "Select" usado para consulta (Query).

<br>

_COMANDOS_

-  SELECT * FROM baseDados; 
    - consulta toda a base de dados "baseDados"
- SELECT campo1, campo2 FROM baseDados;
    - consulta somentes os campos 1 e 2 da "baseDados"
- SELECT base.campo1 AS c1, .... FROM base.baseDados AS base;
    - Apelida campos - c1 e baseDados - base

<br>
<hr>
<br>

## DML

- INSERT - inclusao 
- UPDATE -  altera
- DELETE - delete

<br>

_COMANDOS_

- INSERT base (tupla com os campos "colunas") VALUES ('valor');
- UPDATE  base set _campo_ = 'valor' **WHERE** campo = 'valor';
    - WHERE nao pode faltar, se n todos os campos escolhidos serao sobrescritos
- DELETE FROM base WHERE campo = 'valor';
    - WHERE nao pode faltar, se n todos os campos escolhidos serao deletados

    <br>
<hr>
<br>

## DDL

<br>

        Cria, altera e deleta BANCO DE DADOS, TABELAS e ELEMENTOS ASSOCIADOS.

<br>

- CREATE
- ALTER
- DROP

<br>

_COMANDOS_

- CREATE DATABASE _name_;
- CREATE TABLE _name( dados e seus tipos )_;
- ALTER TABLE _base_ ADD _campo tipo_do_campo_;
- DROP DATABASE _base_;
- DROP TABLE _base_;

<br>
<hr>
<br>

## DDL

<br>

        Contrla os aspectos de autorização de dados e licenças de usuários para controlar quem tem acesso para manipular dados dentro do banco de daos.

<br>

- GRANT - autoriza
- REVOKE - remove/restringe

<br>

_COMANDOS_

- GRANT SELECT ON _base_ TO _usuario_;
    - Permite o usuario a fazer consultas na base.
- REVOKE CREATE TABLE FROM usuario;
    - Tira a permissão do usuario de criar tabelas na base.

<br>
<hr>
<br>

## DDL

<br>

        Contrla os aspectos de autorização de dados e licenças de usuários para controlar quem tem acesso para manipular dados dentro do banco de daos.

<br>

- BEGIN TRANSACTION ou START TRANSACTION - Usando para marcar o começo de uma transação.
- COMMIT - finaliza a transação.
- ROLLBACK - descarta as mudanças feitas em COMMIT.

<br>

*Depende do SLQ*

<br>

_COMANDOS_

- BEGIN:
     - CREATE TABLE base (campos e tipos);<br>
     BEGIN TRANSACTION; -- começa a transação.<br>
     INSERT INTO _base_ VALUES ('valor');<br>
     COMMIT; -- termina a transação e grava os dados.
- COMMIT
- ROLLBACK:
     - CREATE TABLE base (campos e tipos);<br>
     BEGIN TRANSACTION; -- começa a transação.<br>
     INSERT INTO _base_ VALUES ('valor');<br>
     ROLLBACK; -- as inserções foram desfeitas.