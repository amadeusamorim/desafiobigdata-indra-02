
update_data_external_table_unidades.sh 

HDFS_DIR="/projeto/dados_unidades/unidades/"
NOME_PASTA=$1

echo "Efetuando a 1 ingestão na tabela de unidades"
cd ../dados/${NOME_PASTA}
hdfs dfs -copyFromLocal unidades.csv ${HDFS_DIR}

