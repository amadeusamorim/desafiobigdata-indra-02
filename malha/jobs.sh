#!/bin/bash

#### EFETUANDO A 1 INGESTÃO ##########
# Ler Arquivo de Alunos enviar para o hdfs
echo "efetuando a 1 ingestão..."
bash ../scripts/update_data_external_table.sh first_ingestion
bash ../scripts/insert_data_worked_table.sh

# verificar a partição
echo "Listando as Partições"
beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_hive.alunos_curso;"

# descrever a tabela
echo "Descrevendo a Tabela Aluno"
beeline -u jdbc:hive2://localhost:10000 -e ""

# count na tabela
echo "Quantidade de Registros da Tabela"
beeline -u jdbc:hive2://localhost:10000 -e ""

# mostrar as 10 primeiras linhas da tabela
echo "Mostrando Apenas os 10 primeiros"
beeline -u jdbc:hive2://localhost:10000 -e ""

###### EFETUAR a INGESTÃO DOS DADOS DA PASTA "second_ingestion"
# efetuar a ingestão dos novos dados

# verificar a partição

# descrever a tabela

# count na tabela

# mostrar as 10 primeiras linhas da tabela