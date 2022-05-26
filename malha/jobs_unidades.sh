#!/bin/bash

jobs_unidades.sh

#### EFETUANDO A INGESTAO UNIDADES ##########
# Ler Arquivo de Unidades enviar para o hdfs
echo "efetuando a 1 ingestão..."
bash ../scripts/update_data_external_table_unidades.sh unidades_ingestion
bash ../scripts/insert_data_worked_table_unidades.sh

# verificar a partição
echo "Listando as Partições"
beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_hive.unidades_curso;"

# descrever a tabela
echo "Descrevendo a Tabela Unidade"
beeline -u jdbc:hive2://localhost:10000 -e "DESCRIBE desafio_hive.unidades_curso;"

# count na tabela
echo "Quantidade de Registros da Tabela"
beeline -u jdbc:hive2://localhost:10000 -e "SELECT COUNT(*) FROM desafio_hive.unidades_curso;"

# mostrar as 10 primeiras linhas da tabela
echo "Mostrando Apenas os 10 primeiros"
beeline -u jdbc:hive2://localhost:10000 -e "SELECT * FROM desafio_hive.unidades_curso LIMIT 10;"

