#!/bin/bash

# Criar pastas do HDFS para 

echo "Criando HDFS de Alunos"
hdfs dfs -mkdir -p /projeto/dados_aluno/alunos
echo "Criando HDFS de Cursos"
hdfs dfs -mkdir -p /projeto/dados_cursos/cursos
echo "Criando HDFS de Unidades"
hdfs dfs -mkdir -p /projeto/dados_unidades/unidades


# Executar o Create Tables
echo "Criando as Tabelas de Alunos"
cd scripts/create_tables

bash create_tables.sh
bash create_tables_cursos.sh
bash_create_tables_unidades.sh
