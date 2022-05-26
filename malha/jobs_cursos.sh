#!/bin/bash

#### EFETUANDO A INGESTAO CURSOS ##########
# Ler Arquivo de Cursos enviar para o hdfs
echo "efetuando a ingestão de cursos..."
bash ../scripts/update_data_external_table_cursos.sh cursos_ingestion
bash ../scripts/insert_data_worked_table_cursos.sh

# verificar a partição
echo "Listando as Partições"
beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_hive.cursos_curso;"

# descrever a tabela
echo "Descrevendo a Tabela Curso"
beeline -u jdbc:hive2://localhost:10000 -e "DESCRIBE desafio_hive.cursos_curso;"

# count na tabela
echo "Quantidade de Registros da Tabela"
beeline -u jdbc:hive2://localhost:10000 -e "SELECT COUNT(*) FROM desafio_hive.cursos_curso;"

# mostrar as 10 primeiras linhas da tabela
echo "Mostrando Apenas os 10 primeiros"
beeline -u jdbc:hive2://localhost:10000 -e "SELECT * FROM desafio_hive.cursos_curso LIMIT 10;"
