HDFS_DIR="/projeto/dados_cursos/cursos/"
NOME_PASTA=$1

echo "Efetuando a 1 ingestão na tabela de cursos"
cd ../dados/${NOME_PASTA}
hdfs dfs -copyFromLocal cursos.csv ${HDFS_DIR}
