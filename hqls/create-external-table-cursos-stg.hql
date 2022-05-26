CREATE DATABASE IF NOT EXISTS ${TARGET_DATABASE};

DROP TABLE IF EXISTS ${TARGET_DATABASE}.${TARGET_TABLE};

CREATE EXTERNAL TABLE IF NOT EXISTS ${TARGET_DATABASE}.${TARGET_TABLE}(
	`id_curso` int,
	`id_unidade` int,
	`codigo` string,
	`nome` string,
	`nivel` char(1),
	`id_modalidade_educacao` int,
	`id_municipio` int,
	`id_tipo_oferta_curso` int,
	`id_area_curso` int,
	`id_grau_academico` int,
	`id_eixo_conhecimento` int,	
	`ativo` int
)
COMMENT 'Tabela Externa de Cursos'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '${HDFS_DIR}'
tblproperties ('skip.header.line.count'='1', 'store.charset'='UTF-8', 'retrieve.charset'='UTF-8');
