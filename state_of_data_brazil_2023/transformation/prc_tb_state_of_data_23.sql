CREATE OR REPLACE PROCEDURE prc.prc_tb_state_of_data_23 (VAR_RAW STRING,VAR_TRUSTED STRING) 
BEGIN

--VARIÁVEIS
SET VAR_RAW = 'camada-raw';
SET VAR_TRUSTED = 'camada-trusted';


-- PROCEDURE

EXECUTE IMMEDIATE
"""
CREATE TEMP TABLE temp_state_of_data_23 as (
select
  P0 as  str_cod_id
,CAST( P1_a as  INT64) num_idade
, P1_a_1  as  str_faixa_idade
, P1_b  as  str_genero
, P1_c  as  str_cor_raca_etnia
,CASE WHEN P1_d  = "0" THEN FALSE ELSE TRUE end is_pcd
, P1_e  as  str_experiencia_prejudicada
,CASE WHEN P1_e_1  = "0" THEN FALSE ELSE TRUE end is_experiencia_nao_prejudicada
,CASE WHEN P1_e_2  = "0" THEN FALSE ELSE TRUE end is_motivo_cor_raca_etnia
,CASE WHEN P1_e_3  = "0" THEN FALSE ELSE TRUE end is_motivo_identidade_genero
,CASE WHEN P1_e_4  = "0" THEN FALSE ELSE TRUE end is_motivo_pcd
, P1_f  as  str_aspectos_prejudicados
,CASE WHEN P1_f_1 = "0" THEN FALSE ELSE TRUE end is_qt_vagas_recebidas
,CASE WHEN P1_f_2 = "0" THEN FALSE ELSE TRUE end is_senioridade_vagas_recebidas
,CASE WHEN P1_f_3 = "0" THEN FALSE ELSE TRUE end is_aprovacao_processos_entrevistas
,CASE WHEN P1_f_4 = "0" THEN FALSE ELSE TRUE end is_oportunidade_progresso
,CASE WHEN P1_f_5 = "0" THEN FALSE ELSE TRUE end is_velocidade_progresso
,CASE WHEN P1_f_6 = "0" THEN FALSE ELSE TRUE end is_cobranca_stress
,CASE WHEN P1_f_7 = "0" THEN FALSE ELSE TRUE end is_atencao_ideias
,CASE WHEN P1_f_8 = "0" THEN FALSE ELSE TRUE end is_relacionamento_trabalho
,CASE WHEN P1_f_9 = "0" THEN FALSE ELSE TRUE end is_relacionamento_fora_trabalho
,CASE WHEN P1_g  = "0" THEN FALSE ELSE TRUE end is_reside_brasil
, P1_i  as  str_estado_residente
, P1_i_1  as  str_uf_residente
, P1_i_2  as  str_regiao_residente
,CASE WHEN P1_j  = "0" THEN FALSE ELSE TRUE end is_mudanca_estado
, P1_k  as  str_regiao_origem
, P1_l  as  str_nivel_escolaridade
, P1_m  as  str_area_formacao
, P2_a  as  str_situacao_trabalho
, P2_b  as  str_setor
, P2_c  as  str_num_funcionarios
,CASE WHEN P2_d  = "0" THEN FALSE ELSE TRUE end is_gestor
, P2_e  as  str_cargo_gestor
, P2_f  as  str_cargo_atual
, P2_g  as  str_nivel
, P2_h  as  str_faixa_salarial
, P2_i  as  str_tempo_exp_dados
, P2_j  as  str_tempo_exp_ti
,CASE WHEN P2_k  = "0" THEN FALSE ELSE TRUE end is_satisfeito_empresa_atual
, P2_l  as  str_motivo_insatisfacao
,CASE WHEN P2_l_1  = "0" THEN FALSE ELSE TRUE end is_falta_oportunidade_crescimento
,CASE WHEN P2_l_2  = "0" THEN FALSE ELSE TRUE end is_salario_abaixo_mercado
,CASE WHEN P2_l_3  = "0" THEN FALSE ELSE TRUE end is_ma_relacao_lider
,CASE WHEN P2_l_4  = "0" THEN FALSE ELSE TRUE end is_troca_area_atuacao
,CASE WHEN P2_l_5  = "0" THEN FALSE ELSE TRUE end is_mais_beneficios
,CASE WHEN P2_l_6  = "0" THEN FALSE ELSE TRUE end is_clima_trabalho_ruim
,CASE WHEN P2_l_7  = "0" THEN FALSE ELSE TRUE end is_falta_maturidade_analitica
, P2_m  as  str_entrevistas_ultimos_6_meses
, P2_n  as  str_mudanca_emprego_proximos_6_meses
, P2_o  as  str_criterios_decisao_trabalho
,CASE WHEN P2_o_1  = "0" THEN FALSE ELSE TRUE end is_criterio_remuneracao
,CASE WHEN P2_o_2  = "0" THEN FALSE ELSE TRUE end is_criterio_beneficios
,CASE WHEN P2_o_3  = "0" THEN FALSE ELSE TRUE end is_criterio_proposito_trabalho
,CASE WHEN P2_o_4  = "0" THEN FALSE ELSE TRUE end is_criterio_flexibilidade_trabalho
,CASE WHEN P2_o_5  = "0" THEN FALSE ELSE TRUE end is_criterio_clima_trabalho
,CASE WHEN P2_o_6  = "0" THEN FALSE ELSE TRUE end is_criterio_oportunidade_aprendizado
,CASE WHEN P2_o_7  = "0" THEN FALSE ELSE TRUE end is_criterio_plano_carreira
,CASE WHEN P2_o_8  = "0" THEN FALSE ELSE TRUE end is_criterio_maturidade_tecnologica
,CASE WHEN P2_o_9  = "0" THEN FALSE ELSE TRUE end is_criterio_qualidade_lideres
,CASE WHEN P2_o_10  = "0" THEN FALSE ELSE TRUE end is_criterio_reputacao_empresa
, P2_q  as  str_layoff_2023
, P2_r  as  str_forma_trabalho_atual
, P2_s  as  str_forma_trabalho_ideal
, P2_t  as  str_reacao_modelo_presencial
, P3_a  as  str_pessoas_dados
, P3_b  as  str_papeis_time_dados
,CASE WHEN P3_b_1  = "0" THEN FALSE ELSE TRUE end is_analytics_engineer
,CASE WHEN P3_b_2  = "0" THEN FALSE ELSE TRUE end is_data_engineer
,CASE WHEN P3_b_3  = "0" THEN FALSE ELSE TRUE end is_data_analyst
,CASE WHEN P3_b_4  = "0" THEN FALSE ELSE TRUE end is_data_scientist
,CASE WHEN P3_b_5  = "0" THEN FALSE ELSE TRUE end is_dba
,CASE WHEN P3_b_6  = "0" THEN FALSE ELSE TRUE end is_bi_analyst
,CASE WHEN P3_b_7  = "0" THEN FALSE ELSE TRUE end is_data_architect
,CASE WHEN P3_b_8  = "0" THEN FALSE ELSE TRUE end is_data_product_manager
,CASE WHEN P3_b_9  = "0" THEN FALSE ELSE TRUE end is_business_analyst
, P3_c  as  str_responsabilidastr_gestor
,CASE WHEN P3_c_1  = "0" THEN FALSE ELSE TRUE end is_visao_longo_prazo
,CASE WHEN P3_c_2  = "0" THEN FALSE ELSE TRUE end is_organizacao_treinamentos
,CASE WHEN P3_c_3  = "0" THEN FALSE ELSE TRUE end is_atracao_talentos
,CASE WHEN P3_c_4  = "0" THEN FALSE ELSE TRUE end is_decisao_ferramentas
,CASE WHEN P3_c_5  = "0" THEN FALSE ELSE TRUE end is_gestor_engenharia_dados
,CASE WHEN P3_c_6  = "0" THEN FALSE ELSE TRUE end is_gestor_entregas
,CASE WHEN P3_c_7  = "0" THEN FALSE ELSE TRUE end is_gestor_ai_ml
,CASE WHEN P3_c_8  = "0" THEN FALSE ELSE TRUE end is_gestor_atuacao_tecnica
,CASE WHEN P3_c_9  = "0" THEN FALSE ELSE TRUE end is_gestao_projetos_dados
,CASE WHEN P3_c_10  = "0" THEN FALSE ELSE TRUE end is_gestao_produtos_dados
,CASE WHEN P3_c_11  = "0" THEN FALSE ELSE TRUE end is_gestao_pessoas
, P3_d  as  str_desafios_gestor
,CASE WHEN P3_d_1  = "0" THEN FALSE ELSE TRUE end is_contratar_talentos
,CASE WHEN P3_d_2  = "0" THEN FALSE ELSE TRUE end is_reter_talentos
,CASE WHEN P3_d_3  = "0" THEN FALSE ELSE TRUE end is_convencer_investimentos_dados
,CASE WHEN P3_d_4  = "0" THEN FALSE ELSE TRUE end is_gestao_equipes_remoto
,CASE WHEN P3_d_5  = "0" THEN FALSE ELSE TRUE end is_gestao_projetos_multidisciplinares
,CASE WHEN P3_d_6  = "0" THEN FALSE ELSE TRUE end is_organizar_informacoes
,CASE WHEN P3_d_7  = "0" THEN FALSE ELSE TRUE end is_processar_armazenar_dados
,CASE WHEN P3_d_8  = "0" THEN FALSE ELSE TRUE end is_gerar_valor_negocios
,CASE WHEN P3_d_9  = "0" THEN FALSE ELSE TRUE end is_manter_modelos_ml
,CASE WHEN P3_d_10  = "0" THEN FALSE ELSE TRUE end is_gerenciar_expectativa_negocios
,CASE WHEN P3_d_11  = "0" THEN FALSE ELSE TRUE end is_manutencao_projetos_modelos
,CASE WHEN P3_d_12  = "0" THEN FALSE ELSE TRUE end is_inovacao_dados
,CASE WHEN P3_d_13  = "0" THEN FALSE ELSE TRUE end is_garantir_roi
,CASE WHEN P3_d_14  = "0" THEN FALSE ELSE TRUE end is_dividir_tempo_tecnico_gestao
, P3_e  as  str_ai_generativa_prioridade
, P3_f  as  str_tipos_uso_ai_generativa
,CASE WHEN P3_f_1  = "0" THEN FALSE ELSE TRUE end is_colaboradores_uso_independente_lideres
,CASE WHEN P3_f_2  = "0" THEN FALSE ELSE TRUE end is_direcionamento_centralizado_ai
,CASE WHEN P3_f_3  = "0" THEN FALSE ELSE TRUE end is_dev_usando_copilots
,CASE WHEN P3_f_4  = "0" THEN FALSE ELSE TRUE end is_ai_melhorar_produtos_externos
,CASE WHEN P3_f_5  = "0" THEN FALSE ELSE TRUE end is_ai_melhorar_produtos_internos
,CASE WHEN P3_f_6  = "0" THEN FALSE ELSE TRUE end is_ai_frente_negocio
,CASE WHEN P3_f_7  = "0" THEN FALSE ELSE TRUE end is_ai_nao_prioridade_lideres
,CASE WHEN P3_f_8  = "0" THEN FALSE ELSE TRUE end is_nao_sabe_opinar_ia
, P3_g  as  str_motivos_nao_usar_ai
,CASE WHEN P3_g_1  = "0" THEN FALSE ELSE TRUE end is_falta_compreensao_casos_uso
,CASE WHEN P3_g_2  = "0" THEN FALSE ELSE TRUE end is_falta_confiabilidade_ai
,CASE WHEN P3_g_3  = "0" THEN FALSE ELSE TRUE end is_incerteza_regulamentacao
,CASE WHEN P3_g_4  = "0" THEN FALSE ELSE TRUE end is_preocupacoes_seguranca_privacidade
,CASE WHEN P3_g_5  = "0" THEN FALSE ELSE TRUE end is_roi_nao_comprovado_ai
,CASE WHEN P3_g_6  = "0" THEN FALSE ELSE TRUE end is_dados_nao_prontos_ai
,CASE WHEN P3_g_7  = "0" THEN FALSE ELSE TRUE end is_falta_expertise
,CASE WHEN P3_g_8  = "0" THEN FALSE ELSE TRUE end is_direcao_nao_ve_valor_ai
,CASE WHEN P3_g_9  = "0" THEN FALSE ELSE TRUE end is_preocupacoes_propriedade_intelectual
, P4_a  as  str_atuacao_informal
, P4_a_1  as  str_atuacao_formal
, P4_b  as  str_fontes_dados_processados
,CASE WHEN P4_b_1  = "0" THEN FALSE ELSE TRUE end is_dados_relacionais_processados
,CASE WHEN P4_b_2  = "0" THEN FALSE ELSE TRUE end is_dados_nosql_processados
,CASE WHEN P4_b_3  = "0" THEN FALSE ELSE TRUE end is_imagens_processadas
,CASE WHEN P4_b_4  = "0" THEN FALSE ELSE TRUE end is_textos_processados
,CASE WHEN P4_b_5  = "0" THEN FALSE ELSE TRUE end is_videos_processados
,CASE WHEN P4_b_6  = "0" THEN FALSE ELSE TRUE end is_audios_processados
,CASE WHEN P4_b_7  = "0" THEN FALSE ELSE TRUE end is_planilhas_processadas
,CASE WHEN P4_b_8  = "0" THEN FALSE ELSE TRUE end is_dados_georeferenciados_processados
, P4_c  as  str_fontes_dados_mais_usadas
,CASE WHEN P4_c_1  = "0" THEN FALSE ELSE TRUE end is_dados_relacionais_mais_usados
,CASE WHEN P4_c_2  = "0" THEN FALSE ELSE TRUE end is_dados_nosql_mais_usados
,CASE WHEN P4_c_3  = "0" THEN FALSE ELSE TRUE end is_imagens_mais_usadas
,CASE WHEN P4_c_4  = "0" THEN FALSE ELSE TRUE end is_textos_mais_usados
,CASE WHEN P4_c_5  = "0" THEN FALSE ELSE TRUE end is_videos_mais_usados
,CASE WHEN P4_c_6  = "0" THEN FALSE ELSE TRUE end is_audios_mais_usados
,CASE WHEN P4_c_7  = "0" THEN FALSE ELSE TRUE end is_planilhas_mais_usadas
,CASE WHEN P4_c_8  = "0" THEN FALSE ELSE TRUE end is_dados_georeferenciados_mais_usados
, P4_d  as  str_linguagens_utilizadas_trabalho
,CASE WHEN P4_d_1  = "0" THEN FALSE ELSE TRUE end is_sql_utilizada
,CASE WHEN P4_d_2  = "0" THEN FALSE ELSE TRUE end is_r_utilizada
,CASE WHEN P4_d_3  = "0" THEN FALSE ELSE TRUE end is_python_utilizada
,CASE WHEN P4_d_4  = "0" THEN FALSE ELSE TRUE end is_c_cplusplus_csharp_utilizada
,CASE WHEN P4_d_5  = "0" THEN FALSE ELSE TRUE end is_dotnet_utilizada
,CASE WHEN P4_d_6  = "0" THEN FALSE ELSE TRUE end is_java_utilizada
,CASE WHEN P4_d_7  = "0" THEN FALSE ELSE TRUE end is_julia_utilizada
,CASE WHEN P4_d_8  = "0" THEN FALSE ELSE TRUE end is_sas_stata_utilizada
,CASE WHEN P4_d_9  = "0" THEN FALSE ELSE TRUE end is_visual_basic_vba_utilizada
,CASE WHEN P4_d_10  = "0" THEN FALSE ELSE TRUE end is_scala_utilizada
,CASE WHEN P4_d_11  = "0" THEN FALSE ELSE TRUE end is_matlab_utilizada
,CASE WHEN P4_d_12  = "0" THEN FALSE ELSE TRUE end is_rust_utilizada
,CASE WHEN P4_d_13  = "0" THEN FALSE ELSE TRUE end is_php_utilizada
,CASE WHEN P4_d_14  = "0" THEN FALSE ELSE TRUE end is_javascript_utilizada
,CASE WHEN P4_d_15  = "0" THEN FALSE ELSE TRUE end is_sem_linguagem_utilizada
, P4_e  as  str_linguagem_mais_utilizada_trabalho
, P4_f  as  str_linguagem_preferida
, P4_g  as  str_bancos_dados_utilizados_trabalho
,CASE WHEN P4_g_1  = "0" THEN FALSE ELSE TRUE end is_mysql_utilizado
,CASE WHEN P4_g_2  = "0" THEN FALSE ELSE TRUE end is_oracle_utilizado
,CASE WHEN P4_g_3  = "0" THEN FALSE ELSE TRUE end is_sql_server_utilizado
,CASE WHEN P4_g_4  = "0" THEN FALSE ELSE TRUE end is_amazon_rds_utilizado
,CASE WHEN P4_g_5  = "0" THEN FALSE ELSE TRUE end is_dynamodb_utilizado
,CASE WHEN P4_g_6  = "0" THEN FALSE ELSE TRUE end is_couchdb_utilizado
,CASE WHEN P4_g_7  = "0" THEN FALSE ELSE TRUE end is_cassandra_utilizado
,CASE WHEN P4_g_8  = "0" THEN FALSE ELSE TRUE end is_mongodb_utilizado
,CASE WHEN P4_g_9  = "0" THEN FALSE ELSE TRUE end is_mariadb_utilizado
,CASE WHEN P4_g_10  = "0" THEN FALSE ELSE TRUE end is_datomic_utilizado
,CASE WHEN P4_g_11  = "0" THEN FALSE ELSE TRUE end is_s3_utilizado
,CASE WHEN P4_g_12  = "0" THEN FALSE ELSE TRUE end is_postgresql_utilizado
,CASE WHEN P4_g_13  = "0" THEN FALSE ELSE TRUE end is_elasticsearch_utilizado
,CASE WHEN P4_g_14  = "0" THEN FALSE ELSE TRUE end is_db2_utilizado
,CASE WHEN P4_g_15  = "0" THEN FALSE ELSE TRUE end is_access_utilizado
,CASE WHEN P4_g_16  = "0" THEN FALSE ELSE TRUE end is_sqlite_utilizado
,CASE WHEN P4_g_17  = "0" THEN FALSE ELSE TRUE end is_sybase_utilizado
,CASE WHEN P4_g_18  = "0" THEN FALSE ELSE TRUE end is_firebase_utilizado
,CASE WHEN P4_g_19  = "0" THEN FALSE ELSE TRUE end is_vertica_utilizado
,CASE WHEN P4_g_20  = "0" THEN FALSE ELSE TRUE end is_redis_utilizado
,CASE WHEN P4_g_21  = "0" THEN FALSE ELSE TRUE end is_neo4j_utilizado
,CASE WHEN P4_g_22  = "0" THEN FALSE ELSE TRUE end is_bigquery_utilizado
,CASE WHEN P4_g_23  = "0" THEN FALSE ELSE TRUE end is_firestore_utilizado
,CASE WHEN P4_g_24  = "0" THEN FALSE ELSE TRUE end is_redshift_utilizado
,CASE WHEN P4_g_25  = "0" THEN FALSE ELSE TRUE end is_athena_utilizado
,CASE WHEN P4_g_26  = "0" THEN FALSE ELSE TRUE end is_snowflake_utilizado
,CASE WHEN P4_g_27  = "0" THEN FALSE ELSE TRUE end is_databricks_utilizado
,CASE WHEN P4_g_28  = "0" THEN FALSE ELSE TRUE end is_hbase_utilizado
,CASE WHEN P4_g_29  = "0" THEN FALSE ELSE TRUE end is_presto_utilizado
,CASE WHEN P4_g_30  = "0" THEN FALSE ELSE TRUE end is_splunk_utilizado
,CASE WHEN P4_g_31  = "0" THEN FALSE ELSE TRUE end is_sap_hana_utilizado
,CASE WHEN P4_g_32  = "0" THEN FALSE ELSE TRUE end is_hive_utilizado
,CASE WHEN P4_g_33  = "0" THEN FALSE ELSE TRUE end is_firebird_utilizado
, P4_h  as  str_cloud_preferida
,CASE WHEN P4_h_1  = "0" THEN FALSE ELSE TRUE end is_azure_preferida
,CASE WHEN P4_h_2  = "0" THEN FALSE ELSE TRUE end is_aws_preferida
,CASE WHEN P4_h_3  = "0" THEN FALSE ELSE TRUE end is_gcp_preferida
,CASE WHEN P4_h_4  = "0" THEN FALSE ELSE TRUE end is_oracle_cloud_preferida
,CASE WHEN P4_h_5  = "0" THEN FALSE ELSE TRUE end is_ibm_preferida
,CASE WHEN P4_h_6  = "0" THEN FALSE ELSE TRUE end is_on_premise_preferida
,CASE WHEN P4_h_7  = "0" THEN FALSE ELSE TRUE end is_cloud_propria_preferida
, P4_i  as  str_cloud_preferencia
, P4_j  as  str_ferramenta_bi_utilizada
,CASE WHEN P4_j_1  = "0" THEN FALSE ELSE TRUE end is_powerbi_utilizada
,CASE WHEN P4_j_2  = "0" THEN FALSE ELSE TRUE end is_qlik_utilizada
,CASE WHEN P4_j_3  = "0" THEN FALSE ELSE TRUE end is_tableau_utilizada
,CASE WHEN P4_j_4  = "0" THEN FALSE ELSE TRUE end is_metabase_utilizada
,CASE WHEN P4_j_5  = "0" THEN FALSE ELSE TRUE end is_superset_utilizada
,CASE WHEN P4_j_6  = "0" THEN FALSE ELSE TRUE end is_redash_utilizada
,CASE WHEN P4_j_7  = "0" THEN FALSE ELSE TRUE end is_looker_utilizada
,CASE WHEN P4_j_8  = "0" THEN FALSE ELSE TRUE end is_looker_studio_utilizada
,CASE WHEN P4_j_9  = "0" THEN FALSE ELSE TRUE end is_quicksight_utilizada
,CASE WHEN P4_j_10  = "0" THEN FALSE ELSE TRUE end is_mode_utilizada
,CASE WHEN P4_j_11  = "0" THEN FALSE ELSE TRUE end is_alteryx_utilizada
,CASE WHEN P4_j_12  = "0" THEN FALSE ELSE TRUE end is_microstrategy_utilizada
,CASE WHEN P4_j_13  = "0" THEN FALSE ELSE TRUE end is_cognos_utilizada
,CASE WHEN P4_j_14  = "0" THEN FALSE ELSE TRUE end is_sap_analytics_utilizada
,CASE WHEN P4_j_15  = "0" THEN FALSE ELSE TRUE end is_oracle_bi_utilizada
,CASE WHEN P4_j_16  = "0" THEN FALSE ELSE TRUE end is_einstein_analytics_utilizada
,CASE WHEN P4_j_17  = "0" THEN FALSE ELSE TRUE end is_birst_utilizada
,CASE WHEN P4_j_18  = "0" THEN FALSE ELSE TRUE end is_sas_visual_analytics_utilizada
,CASE WHEN P4_j_19  = "0" THEN FALSE ELSE TRUE end is_grafana_utilizada
,CASE WHEN P4_j_20  = "0" THEN FALSE ELSE TRUE end is_spotfire_utilizada
,CASE WHEN P4_j_21  = "0" THEN FALSE ELSE TRUE end is_pentaho_utilizada
,CASE WHEN P4_j_22  = "0" THEN FALSE ELSE TRUE end is_analises_excel_planilhas
,CASE WHEN P4_j_23  = "0" THEN FALSE ELSE TRUE end is_sem_ferramenta_bi
, P4_k  as  str_ferramenta_bi_preferida
, P4_l  as  str_tipo_uso_ai_generativa
,CASE WHEN P4_l_1  = "0" THEN FALSE ELSE TRUE end is_colaboradores_uso_independente
,CASE WHEN P4_l_2  = "0" THEN FALSE ELSE TRUE end is_direcionamento_centralizado
,CASE WHEN P4_l_3  = "0" THEN FALSE ELSE TRUE end is_dev_copilots
,CASE WHEN P4_l_4  = "0" THEN FALSE ELSE TRUE end is_ai_produtos_externos
,CASE WHEN P4_l_5  = "0" THEN FALSE ELSE TRUE end is_ai_produtos_internos
,CASE WHEN P4_l_6  = "0" THEN FALSE ELSE TRUE end is_ai_principal_frente_negocio
,CASE WHEN P4_l_7  = "0" THEN FALSE ELSE TRUE end is_ai_nao_prioridade
,CASE WHEN P4_l_8  = "0" THEN FALSE ELSE TRUE end is_nao_sabe_opinar_ai
,CASE WHEN P4_m  = "0" THEN FALSE ELSE TRUE end is_utiliza_chatgpt
,CASE WHEN P4_m_1  = "0" THEN FALSE ELSE TRUE end is_sem_uso_produtividade_ai
,CASE WHEN P4_m_2  = "0" THEN FALSE ELSE TRUE end is_uso_gratuito_produtividade_ai
,CASE WHEN P4_m_3  = "0" THEN FALSE ELSE TRUE end is_uso_pago_produtividade_ai
,CASE WHEN P4_m_4  = "0" THEN FALSE ELSE TRUE end is_empresa_paga_produtividade_ai
,CASE WHEN P4_m_5  = "0" THEN FALSE ELSE TRUE end is_uso_copilot
, P5_a  as  str_objetivo_area_dados
, P5_b  as  str_oportunidade_buscada
, P5_c  as  num_tempo_busca_oportunidade
, P5_d  as  str_busca_emprego_area_dados
, P6_a  as  str_rotina_eng_dados_ed
,CASE WHEN P6_a_1  = "0" THEN FALSE ELSE TRUE end is_pipelines_programacao_ed
,CASE WHEN P6_a_2  = "0" THEN FALSE ELSE TRUE end is_construcoes_etl_ed
,CASE WHEN P6_a_3  = "0" THEN FALSE ELSE TRUE end is_consultas_sql_ed
,CASE WHEN P6_a_4  = "0" THEN FALSE ELSE TRUE end is_integracao_fontes_dados_ed
,CASE WHEN P6_a_5  = "0" THEN FALSE ELSE TRUE end is_modelo_arquitetura_dados_ed
,CASE WHEN P6_a_6  = "0" THEN FALSE ELSE TRUE end is_manutencao_repositorios_dados_ed
,CASE WHEN P6_a_7  = "0" THEN FALSE ELSE TRUE end is_modelagem_dados_ed
,CASE WHEN P6_a_8  = "0" THEN FALSE ELSE TRUE end is_qualidade_dados_ed
,CASE WHEN P6_a_9  = "0" THEN FALSE ELSE TRUE end is_nenhuma_reflete_ed
, P6_b  as  str_ferramentas_etl_ed
,CASE WHEN P6_b_1  = "0" THEN FALSE ELSE TRUE end is_scripts_python_ed
,CASE WHEN P6_b_2  = "0" THEN FALSE ELSE TRUE end is_sql_stored_procedures_ed
,CASE WHEN P6_b_3  = "0" THEN FALSE ELSE TRUE end is_apache_airflow_ed
,CASE WHEN P6_b_4  = "0" THEN FALSE ELSE TRUE end is_apache_nifi_ed
,CASE WHEN P6_b_5  = "0" THEN FALSE ELSE TRUE end is_luigi_ed
,CASE WHEN P6_b_6  = "0" THEN FALSE ELSE TRUE end is_aws_glue_ed
,CASE WHEN P6_b_7  = "0" THEN FALSE ELSE TRUE end is_talend_ed
,CASE WHEN P6_b_8  = "0" THEN FALSE ELSE TRUE end is_pentaho_ed
,CASE WHEN P6_b_9  = "0" THEN FALSE ELSE TRUE end is_alteryx_ed
,CASE WHEN P6_b_10  = "0" THEN FALSE ELSE TRUE end is_stitch_ed
,CASE WHEN P6_b_11  = "0" THEN FALSE ELSE TRUE end is_fivetran_ed
,CASE WHEN P6_b_12  = "0" THEN FALSE ELSE TRUE end is_google_dataflow_ed
,CASE WHEN P6_b_13  = "0" THEN FALSE ELSE TRUE end is_oracle_data_integrator_ed
,CASE WHEN P6_b_14  = "0" THEN FALSE ELSE TRUE end is_ibm_datastage_ed
,CASE WHEN P6_b_15  = "0" THEN FALSE ELSE TRUE end is_sap_bw_etl_ed
,CASE WHEN P6_b_16  = "0" THEN FALSE ELSE TRUE end is_ssis_ed
,CASE WHEN P6_b_17  = "0" THEN FALSE ELSE TRUE end is_sas_data_integration_ed
,CASE WHEN P6_b_18  = "0" THEN FALSE ELSE TRUE end is_qlik_sense_ed
,CASE WHEN P6_b_19  = "0" THEN FALSE ELSE TRUE end is_knime_ed
,CASE WHEN P6_b_20  = "0" THEN FALSE ELSE TRUE end is_databricks_ed
,CASE WHEN P6_b_21  = "0" THEN FALSE ELSE TRUE end is_nao_utiliza_etl_ed
,CASE WHEN P6_c  = "0" THEN FALSE ELSE TRUE end is_possui_data_lake_ed
,CASE WHEN P6_d  = "0" THEN FALSE ELSE TRUE end str_tecnologia_data_lake_ed
,CASE WHEN P6_e  = "0" THEN FALSE ELSE TRUE end is_possui_data_warehouse_ed
, P6_f  as  str_tecnologia_data_warehouse_ed
, P6_g  as  str_ferramentas_qualidade_dados_ed
, P6_h  as  str_atividade_maior_tempo_ed
,CASE WHEN P6_h_1  = "0" THEN FALSE ELSE TRUE end is_pipelines_programacao_maior_tempo_ed
,CASE WHEN P6_h_2  = "0" THEN FALSE ELSE TRUE end is_construcoes_etl_maior_tempo_ed
,CASE WHEN P6_h_3  = "0" THEN FALSE ELSE TRUE end is_consultas_sql_maior_tempo_ed
,CASE WHEN P6_h_4  = "0" THEN FALSE ELSE TRUE end is_integracao_fontes_dados_maior_tempo_ed
,CASE WHEN P6_h_5  = "0" THEN FALSE ELSE TRUE end is_modelo_arquitetura_dados_maior_tempo_ed
,CASE WHEN P6_h_6  = "0" THEN FALSE ELSE TRUE end is_manutencao_repositorios_dados_maior_tempo_ed
,CASE WHEN P6_h_7  = "0" THEN FALSE ELSE TRUE end is_modelagem_dados_maior_tempo_ed
,CASE WHEN P6_h_8  = "0" THEN FALSE ELSE TRUE end is_qualidade_dados_maior_tempo_ed
,CASE WHEN P6_h_9  = "0" THEN FALSE ELSE TRUE end is_nenhuma_reflete_maior_tempo_ed
, P7_1  as  str_rotina_ana_dados_ad
,CASE WHEN P7_a_1  = "0" THEN FALSE ELSE TRUE end is_processa_analisa_dados_ad
,CASE WHEN P7_a_2  = "0" THEN FALSE ELSE TRUE end is_construcoes_dashboards_ad
,CASE WHEN P7_a_3  = "0" THEN FALSE ELSE TRUE end is_consultas_sql_ad
,CASE WHEN P7_a_4  = "0" THEN FALSE ELSE TRUE end is_utiliza_apis_ad
,CASE WHEN P7_a_5  = "0" THEN FALSE ELSE TRUE end is_experimentos_estatisticas_ad
,CASE WHEN P7_a_6  = "0" THEN FALSE ELSE TRUE end is_manutencao_etl_ad
,CASE WHEN P7_a_7  = "0" THEN FALSE ELSE TRUE end is_modelagem_dados_ad
,CASE WHEN P7_a_8  = "0" THEN FALSE ELSE TRUE end is_manutencao_planilhas_ad
,CASE WHEN P7_a_9  = "0" THEN FALSE ELSE TRUE end is_ferramentas_estatisticas_ad
,CASE WHEN P7_a_10  = "0" THEN FALSE ELSE TRUE end is_nenhuma_reflete_ad
, P7_b  as  str_ferramentas_etl_ad
,CASE WHEN P7_b_1  = "0" THEN FALSE ELSE TRUE end is_scripts_python_ad
,CASE WHEN P7_b_2  = "0" THEN FALSE ELSE TRUE end is_sql_stored_procedures_ad
,CASE WHEN P7_b_3  = "0" THEN FALSE ELSE TRUE end is_apache_airflow_ad
,CASE WHEN P7_b_4  = "0" THEN FALSE ELSE TRUE end is_apache_nifi_ad
,CASE WHEN P7_b_5  = "0" THEN FALSE ELSE TRUE end is_luigi_ad
,CASE WHEN P7_b_6  = "0" THEN FALSE ELSE TRUE end is_aws_glue_ad
,CASE WHEN P7_b_7  = "0" THEN FALSE ELSE TRUE end is_talend_ad
,CASE WHEN P7_b_8  = "0" THEN FALSE ELSE TRUE end is_pentaho_ad
,CASE WHEN P7_b_9  = "0" THEN FALSE ELSE TRUE end is_alteryx_ad
,CASE WHEN P7_b_10  = "0" THEN FALSE ELSE TRUE end is_stitch_ad
,CASE WHEN P7_b_11  = "0" THEN FALSE ELSE TRUE end is_fivetran_ad
,CASE WHEN P7_b_12  = "0" THEN FALSE ELSE TRUE end is_google_dataflow_ad
,CASE WHEN P7_b_13  = "0" THEN FALSE ELSE TRUE end is_oracle_data_integrator_ad
,CASE WHEN P7_b_14  = "0" THEN FALSE ELSE TRUE end is_ibm_datastage_ad
,CASE WHEN P7_b_15  = "0" THEN FALSE ELSE TRUE end is_sap_bw_etl_ad
,CASE WHEN P7_b_16  = "0" THEN FALSE ELSE TRUE end is_ssis_ad
,CASE WHEN P7_b_17  = "0" THEN FALSE ELSE TRUE end is_sas_data_integration_ad
,CASE WHEN P7_b_18  = "0" THEN FALSE ELSE TRUE end is_qlik_sense_ad
,CASE WHEN P7_b_19  = "0" THEN FALSE ELSE TRUE end is_knime_ad
,CASE WHEN P7_b_20  = "0" THEN FALSE ELSE TRUE end is_databricks_ad
,CASE WHEN P7_b_21  = "0" THEN FALSE ELSE TRUE end is_nao_utiliza_etl_ad
, P7_c  as  str_ferramentas_autonomia_ad
,CASE WHEN P7_c_1  = "0" THEN FALSE ELSE TRUE end is_autocml_ad
,CASE WHEN P7_c_2  = "0" THEN FALSE ELSE TRUE end is_point_and_click_ad
,CASE WHEN P7_c_3  = "0" THEN FALSE ELSE TRUE end is_product_metrics_ad
,CASE WHEN P7_c_4  = "0" THEN FALSE ELSE TRUE end is_analise_crm_ad
,CASE WHEN P7_c_5  = "0" THEN FALSE ELSE TRUE end is_nao_utiliza_ferramentas_ad
,CASE WHEN P7_c_6  = "0" THEN FALSE ELSE TRUE end is_nao_sabe_informar_ad
, P7_d  as  str_atividade_maior_tempo_ad
,CASE WHEN P7_d_1  = "0" THEN FALSE ELSE TRUE end is_processa_analisa_dados_maior_tempo_ad
,CASE WHEN P7_d_2  = "0" THEN FALSE ELSE TRUE end is_construcoes_dashboards_maior_tempo_ad
,CASE WHEN P7_d_3  = "0" THEN FALSE ELSE TRUE end is_consultas_sql_maior_tempo_ad
,CASE WHEN P7_d_4  = "0" THEN FALSE ELSE TRUE end is_utiliza_apis_maior_tempo_ad
,CASE WHEN P7_d_5  = "0" THEN FALSE ELSE TRUE end is_experimentos_estatisticas_maior_tempo_ad
,CASE WHEN P7_d_6  = "0" THEN FALSE ELSE TRUE end is_manutencao_etl_maior_tempo_ad
,CASE WHEN P7_d_7  = "0" THEN FALSE ELSE TRUE end is_modelagem_dados_maior_tempo_ad
,CASE WHEN P7_d_8  = "0" THEN FALSE ELSE TRUE end is_manutencao_planilhas_maior_tempo_ad
,CASE WHEN P7_d_9  = "0" THEN FALSE ELSE TRUE end is_ferramentas_estatisticas_maior_tempo_ad
,CASE WHEN P7_d_10  = "0" THEN FALSE ELSE TRUE end is_nenhuma_reflete_maior_tempo_ad
, P8_a  as  str_rotina_ciencia_dados_cd
,CASE WHEN P8_a_1  = "0" THEN FALSE ELSE TRUE end is_estudos_adhoc_cd
,CASE WHEN P8_a_2  = "0" THEN FALSE ELSE TRUE end is_coleta_limpeza_dados_cd
,CASE WHEN P8_a_3  = "0" THEN FALSE ELSE TRUE end is_contato_times_negocio_cd
,CASE WHEN P8_a_4  = "0" THEN FALSE ELSE TRUE end is_modelos_ml_producao_cd
,CASE WHEN P8_a_5  = "0" THEN FALSE ELSE TRUE end is_colocacao_modelos_producao_cd
,CASE WHEN P8_a_6  = "0" THEN FALSE ELSE TRUE end is_manutencao_modelos_ml_cd
,CASE WHEN P8_a_7  = "0" THEN FALSE ELSE TRUE end is_construcoes_dashboards_cd
,CASE WHEN P8_a_8  = "0" THEN FALSE ELSE TRUE end is_ferramentas_estatisticas_cd
,CASE WHEN P8_a_9  = "0" THEN FALSE ELSE TRUE end is_manutencao_etl_dags_cd
,CASE WHEN P8_a_10  = "0" THEN FALSE ELSE TRUE end is_feature_store_mlops_cd
,CASE WHEN P8_a_11  = "0" THEN FALSE ELSE TRUE end is_infra_modelos_cd
,CASE WHEN P8_a_12  = "0" THEN FALSE ELSE TRUE end is_treino_llms_cd
, P8_b  as  str_tecnicas_metodos_cd
,CASE WHEN P8_b_1  = "0" THEN FALSE ELSE TRUE end is_modelos_regressao_cd
,CASE WHEN P8_b_2  = "0" THEN FALSE ELSE TRUE end is_restr_neurais_classificacao_cd
,CASE WHEN P8_b_3  = "0" THEN FALSE ELSE TRUE end is_sistemas_recomendacao_cd
,CASE WHEN P8_b_4  = "0" THEN FALSE ELSE TRUE end is_metodos_bayesianos_cd
,CASE WHEN P8_b_5  = "0" THEN FALSE ELSE TRUE end is_tecnicas_nlp_cd
,CASE WHEN P8_b_6  = "0" THEN FALSE ELSE TRUE end is_metodos_estatisticos_classicos_cd
,CASE WHEN P8_b_7  = "0" THEN FALSE ELSE TRUE end is_cadeias_markov_hmm_cd
,CASE WHEN P8_b_8  = "0" THEN FALSE ELSE TRUE end is_tecnicas_clusterizacao_cd
,CASE WHEN P8_b_9  = "0" THEN FALSE ELSE TRUE end is_modelos_series_temporais_cd
,CASE WHEN P8_b_10  = "0" THEN FALSE ELSE TRUE end is_reinforcement_learning_cd
,CASE WHEN P8_b_11  = "0" THEN FALSE ELSE TRUE end is_ml_deteccao_fraude_cd
,CASE WHEN P8_b_12  = "0" THEN FALSE ELSE TRUE end is_visao_computacional_cd
,CASE WHEN P8_b_13  = "0" THEN FALSE ELSE TRUE end is_deteccao_churn_cd
,CASE WHEN P8_b_14  = "0" THEN FALSE ELSE TRUE end is_llms_solucao_negocio_cd
, P8_3  as  str_tecnologias_dia_a_dia_cd
,CASE WHEN P8_c_1  = "0" THEN FALSE ELSE TRUE end is_ferramentas_bi_cd
,CASE WHEN P8_c_2  = "0" THEN FALSE ELSE TRUE end is_planilhas_cd
,CASE WHEN P8_c_3  = "0" THEN FALSE ELSE TRUE end is_ambientes_local_cd
,CASE WHEN P8_c_4  = "0" THEN FALSE ELSE TRUE end is_ambientes_nuvem_cd
,CASE WHEN P8_c_5  = "0" THEN FALSE ELSE TRUE end is_ferramentas_automl_cd
,CASE WHEN P8_c_6  = "0" THEN FALSE ELSE TRUE end is_ferramentas_etl_cd
,CASE WHEN P8_c_7  = "0" THEN FALSE ELSE TRUE end is_plataformas_ml_cd
,CASE WHEN P8_c_8  = "0" THEN FALSE ELSE TRUE end is_feature_store_cd
,CASE WHEN P8_c_9  = "0" THEN FALSE ELSE TRUE end is_controle_versao_cd
,CASE WHEN P8_c_10  = "0" THEN FALSE ELSE TRUE end is_data_apps_cd
,CASE WHEN P8_c_11  = "0" THEN FALSE ELSE TRUE end is_estatistica_avancada_cd
, P8_d  as  str_atividade_maior_tempo_cd
,CASE WHEN P8_d_1  = "0" THEN FALSE ELSE TRUE end is_estudos_adhoc_maior_tempo_cd
,CASE WHEN P8_d_2  = "0" THEN FALSE ELSE TRUE end is_coleta_limpeza_dados_maior_tempo_cd
,CASE WHEN P8_d_3  = "0" THEN FALSE ELSE TRUE end is_contato_times_negocio_maior_tempo_cd
,CASE WHEN P8_d_4  = "0" THEN FALSE ELSE TRUE end is_modelos_ml_producao_maior_tempo_cd
,CASE WHEN P8_d_5  = "0" THEN FALSE ELSE TRUE end is_colocacao_modelos_producao_maior_tempo_cd
,CASE WHEN P8_d_6  = "0" THEN FALSE ELSE TRUE end is_manutencao_modelos_ml_maior_tempo_cd
,CASE WHEN P8_d_7  = "0" THEN FALSE ELSE TRUE end is_construcoes_dashboards_maior_tempo_cd
,CASE WHEN P8_d_8  = "0" THEN FALSE ELSE TRUE end is_ferramentas_estatisticas_maior_tempo_cd
,CASE WHEN P8_d_9  = "0" THEN FALSE ELSE TRUE end is_manutencao_etl_dags_maior_tempo_cd
,CASE WHEN P8_d_10  = "0" THEN FALSE ELSE TRUE end is_feature_store_mlops_maior_tempo_cd
,CASE WHEN P8_d_11  = "0" THEN FALSE ELSE TRUE end is_infra_modelos_maior_tempo_cd
,CASE WHEN P8_d_12  = "0" THEN FALSE ELSE TRUE end is_treino_llms_maior_tempo_cd

FROM """ || VAR_RAW ||  """.state_of_data.state_of_data_23
)
""";

EXECUTE IMMEDIATE
"""
TRUNCATE TABLE """ || VAR_TRUSTED ||  """.state_of_data.state_of_data_23

""";

EXECUTE IMMEDIATE
"""
INSERT INTO """ || VAR_TRUSTED ||  """.state_of_data.state_of_data_23
 SELECT * FROM temp_state_of_data_23
""";


END