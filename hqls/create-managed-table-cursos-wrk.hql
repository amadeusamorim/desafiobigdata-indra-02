
CREATE DATABASE IF NOT EXISTS ${TARGET_DATABASE};

DROP TABLE IF EXISTS ${TARGET_DATABASE}.${TARGET_TABLE};

CREATE TABLE ${TARGET_DATABASE}.${TARGET_TABLE} (
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

PARTITIONED BY (DT_FOTO STRING)

ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat' 
TBLPROPERTIES ( 'orc.compress'='SNAPPY')
;
