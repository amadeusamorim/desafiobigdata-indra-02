#!/bin/bash
# Drop tabelas
hdfs dfs -rm -r /projeto/dados_aluno/alunos

# Drop HDFS
echo "Deletanto tabela de ALUNOS"
beeline -u jdbc:hive2://localhost:10000 -e "DROP TABLE IF EXISTS desafio_hive.alunos_curso;"
echo "Deletanto tabela de ALUNOS_EXTERNA"
beeline -u jdbc:hive2://localhost:10000 -e "DROP TABLE IF EXISTS desafio_hive.alunos_curso_external;"
echo "Deletanto tabela de CURSOS"
beeline -u jdbc:hive2://localhost:10000 -e "DROP TABLE IF EXISTS desafio_hive.cursos_curso;"
echo "Deletanto tabela de CURSOS_EXTERNAL"
beeline -u jdbc:hive2://localhost:10000 -e "DROP TABLE IF EXISTS desafio_hive.cursos_curso_external;"
echo "Deletanto tabela de UNIDADES"
beeline -u jdbc:hive2://localhost:10000 -e "DROP TABLE IF EXISTS desafio_hive.unidades_curso;"
echo "Deletanto tabela de UNIDADES_EXTERNAL"
beeline -u jdbc:hive2://localhost:10000 -e "DROP TABLE IF EXISTS desafio_hive.unidades_curso_external;"
echo "Deletanto banco do desafio"
beeline -u jdbc:hive2://localhost:10000 -e "DROP DATABASE IF EXISTS desafio_hive;"
