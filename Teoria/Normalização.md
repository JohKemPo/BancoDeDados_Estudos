# Normalização

        Método de organizaçã que define as enteidades, atributos, relacionamentos, chaves primárias e chaves estrangeiras do BD a ser modelado.

        Isso ecita anomalias futuras ao incluir, excluir, alterar e consultar registros em um BD.


        São aplicadas 3 regras  sobre as tabelas de um BD para verificar se estas estão corretamente projetadas.

        Cada regra só pode ser aplicada se a anterior foi aplicada com sucesso.

## Primeira forma normal ( 1FN )
<br>

- Se todos os campos forem atômicos (simples) e não multivalorados ( multiplos valores no mesmo campo).
- Objetivo de eliminar repetição e desorganização.
<br>
<br>
- ### Formas de resolver:
     - Ajustar os dados crinado novas colunas .
     - Criar uma nova tabela com os dados "extras".

<br>

## Segunda forma normal ( 2FN )
<br>

- Primeiro deve estar de acordo com a 1FN.
- Todos os atributos não chave forem totalmente dependentes da chave primária.

<br>

## Terceira forma normal ( 3FN )
<br>

- Nenhuma coluna não chave depende de outra não chave.


