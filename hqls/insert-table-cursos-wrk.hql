SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

INSERT OVERWRITE TABLE
    ${TARGET_DATABASE}.${TARGET_TABLE}

PARTITION(DT_FOTO) 
SELECT
	id_curso,
	id_unidade,
	codigo,
	nome,
	nivel,
	id_modalidade_educacao,
	id_municipio,
	id_tipo_oferta_curso,
	id_area_curso,
	id_grau_academico,
	id_eixo_conhecimento,	
	ativo,
	'${DT_FOTO}' as DT_FOTO
FROM ${STAGE_DATABASE}.${STAGE_TABLE}
;
