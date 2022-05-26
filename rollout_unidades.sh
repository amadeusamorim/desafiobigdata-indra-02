#!/bin/bash

# Criar pastas do HDFS para 

echo "Criando HDFS de Unidades"
hdfs dfs -mkdir -p /projeto/dados_unidades/unidades

# Executar o Create Tables
echo "Criando as Tabelas de Unidades"
cd scripts/create_tables

bash create_tables_unidades.sh
