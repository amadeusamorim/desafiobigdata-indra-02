
HDFS_DIR="/projeto/dados_aluno/alunos/"
NOME_PASTA=$1

echo "Efetuando a 1 ingestão na tabela de alunos"
cd ../dados/${NOME_PASTA}
hdfs dfs -copyFromLocal alunos.csv ${HDFS_DIR}


# você devera após fazer os testes criar a segunda ingestão