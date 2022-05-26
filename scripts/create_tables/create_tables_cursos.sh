#!/bin/bash

HDFS_DIR="/projeto/dados_cursos/cursos"
TARGET_DATABASE="desafio_hive"
TARGET_TABLE_EXTERNAL="cursos_curso_external"
TARGET_TABLE="cursos_curso"
DT_FOTO="$(date --date="-1 day" "+%Y-%m-%d")"


# Script eh usado para efetuar a criação das tabelas

# CRIACAO DA TABELA EXTERNA
beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar HDFS_DIR="${HDFS_DIR}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE_EXTERNAL}"\
 -f ../../hqls/create-external-table-cursos-stg.hql 

# CRIACAO DA TABELA WORKED
beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE}" \
 -f ../../hqls/create-managed-table-cursos-wrk.hql root@hive_server:/home/amadeus/desafio_bigdata_hive-master/scripts/create_tables# 
