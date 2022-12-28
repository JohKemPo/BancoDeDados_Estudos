# **FUNÇÕES**

<br>

- Cria e atribui valor a uma variável

    - **select @data_final :=** '2020-10-29'; 


- Cria ranking

    - select COLUNA, 
    - count( * ) as APELIDO, 
    - row_number( ) over( order by count(*) desc) as APELIDO 
    - from BASE group by COLUNA order by ORDE