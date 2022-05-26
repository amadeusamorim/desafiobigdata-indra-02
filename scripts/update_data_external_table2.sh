
HDFS_DIR="/projeto/dados_aluno/alunos/"
NOME_PASTA=$1

echo "Efetuando a ingestão na tabela de alunos"
cd ../dados/${NOME_PASTA}
hdfs dfs -copyFromLocal alunos2.csv ${HDFS_DIR}


# você devera após fazer os testes criar a segunda ingestão
