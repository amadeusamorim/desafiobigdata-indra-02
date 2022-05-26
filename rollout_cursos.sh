#!/bin/bash

# Criar pastas do HDFS para 

echo "Criando HDFS de Cursos"
hdfs dfs -mkdir -p /projeto/dados_cursos/cursos


# Executar o Create Tables
echo "Criando as Tabelas de Cursos"
cd scripts/create_tables

bash create_tables_cursos.sh
