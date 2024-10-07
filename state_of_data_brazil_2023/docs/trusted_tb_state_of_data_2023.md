# 🧭1. Padrões de nomenclatura do projeto
> Os campos da tabela seguem o padrão de nomenclatur a seguir:


| Prefixo         | Tipo | Descrição |
|---------------|------|-------------|
is| BOOLEAN | Indica que o campo é verdadeiro ou falso.
str | STRING | Indica que o campo é uma cadeia de caracteres
num | INTEGER | Indica que o campo é número inteiro



<br>

# 🗒️ 2. Documentação da tabela em camada Trusted
### 2.1. Descrição
>Essa tabela traz dados da pesquisa realizada pela comunidade Data Hackers e Bain & Company sobre o mercado de dados no Brasil no ano de 2023 com ajustes nos nomes das colunas e tipagem conforme os padrões de nomenclatura de tabelas sugeridas no projeto.


### 2.2. Campo chave 
- str_cod_id

### 2.3. Metadados

| Nome do Campo                                      | Tipo     | Descrição                                                                                               |
|----------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------|
| str_cod_id                                         | STRING   | Código de identificação do usuário                                                                                                       |
| num_idade                                          | INTEGER  | Idade                                                                                                    |
| str_faixa_idade                                    | STRING   | Faixa idade                                                                                             |
| str_genero                                         | STRING   | Gênero                                                                                                   |
| is_pcd                                             | BOOLEAN  | PCD                                                                                                      |
| str_experiencia_prejudicada                        | STRING   | Experiência profissional prejudicada                                                                    |
| is_experiencia_nao_prejudicada                     | BOOLEAN  | Não acredito que minha experiência profissional seja afetada                                            |
| is_motivo_cor_raca_etnia                           | BOOLEAN  | Experiência prejudicada devido à minha Cor/Raça/Etnia                                                   |
| is_motivo_identidade_genero                        | BOOLEAN  | Experiência prejudicada devido à minha identidade de gênero                                              |
| is_motivo_pcd                                      | BOOLEAN  | Experiência prejudicada devido ao fato de ser PCD                                                        |
| str_aspectos_prejudicados                          | STRING   | Aspectos prejudicados                                                                                   |
| is_qt_vagas_recebidas                              | BOOLEAN  | Quantidade de oportunidades de emprego/vagas recebidas                                                 |
| is_senioridade_vagas_recebidas                     | BOOLEAN  | Senioridade das vagas recebidas em relação à sua experiência                                            |
| is_aprovacao_processos_entrevistas                  | BOOLEAN  | Aprovação em processos seletivos/entrevistas                                                             |
| is_oportunidade_progresso                          | BOOLEAN  | Oportunidades de progressão de carreira                                                                  |
| is_velocidade_progresso                            | BOOLEAN  | Velocidade de progressão de carreira                                                                     |
| is_cobranca_stress                                | BOOLEAN  | Nível de cobrança no trabalho/Stress no trabalho                                                         |
| is_atencao_ideias                                  | BOOLEAN  | Atenção dada diante das minhas opiniões e ideias                                                        |
| is_relacionamento_trabalho                         | BOOLEAN  | Relação com outros membros da empresa, em momentos de trabalho                                         |
| is_relacionamento_fora_trabalho                    | BOOLEAN  | Relação com outros membros da empresa, em momentos de integração e outros momentos fora do trabalho      |
| is_reside_brasil                                   | BOOLEAN  | Vive no Brasil                                                                                           |
| str_estado_residente                               | STRING   | Estado onde mora                                                                                       |
| str_uf_residente                                  | STRING   | UF onde mora                                                                                           |
| str_regiao_residente                               | STRING   | Região onde mora                                                                                       |
| is_mudanca_estado                                  | BOOLEAN  | Mudou de Estado?                                                                                        |
| str_regiao_origem                                  | STRING   | Região de origem                                                                                       |
| str_nivel_escolaridade                             | STRING   | Nível de Ensino                                                                                         |
| str_area_formacao                                  | STRING   | Área de Formação                                                                                        |
| str_situacao_trabalho                              | STRING   | Qual sua situação atual de trabalho?                                                                     |
| str_setor                                          | STRING   | Setor                                                                                                    |
| str_num_funcionarios                               | STRING   | Número de Funcionários                                                                                   |
| is_gestor                                          | BOOLEAN  | Gestor?                                                                                                  |
| str_cargo_gestor                                   | STRING   | Cargo como Gestor                                                                                       |
| str_cargo_atual                                    | STRING   | Cargo Atual                                                                                             |
| str_nivel                                          | STRING   | Nível                                                                                                    |
| str_faixa_salarial                                | STRING   | Faixa salarial                                                                                          |
| str_tempo_exp_dados                                | STRING   | Quanto tempo de experiência na área de dados você tem?                                                   |
| str_tempo_exp_ti                                  | STRING   | Quanto tempo de experiência na área de TI/Engenharia de Software você teve antes de começar a trabalhar na área de dados? |
| is_satisfeito_empresa_atual                        | BOOLEAN  | Você está satisfeito na sua empresa atual?                                                               |
| str_motivo_insatisfacao                            | STRING   | Qual o principal motivo da sua insatisfação com a empresa atual?                                         |
| is_falta_oportunidade_crescimento                  | BOOLEAN  | Falta de oportunidade de crescimento no emprego atual                                                    |
| is_salario_abaixo_mercado                          | BOOLEAN  | Salário atual não corresponde ao mercado                                                                  |
| is_ma_relacao_lider                                | BOOLEAN  | Não tenho uma boa relação com meu líder/gestor                                                           |
| is_troca_area_atuacao                              | BOOLEAN  | Gostaria de trabalhar em outra área de atuação                                                           |
| is_mais_beneficios                                | BOOLEAN  | Gostaria de receber mais benefícios                                                                      |
| is_clima_trabalho_ruim                            | BOOLEAN  | O clima de trabalho/ambiente não é bom                                                                  |
| is_falta_maturidade_analitica                      | BOOLEAN  | Falta de maturidade analítica na empresa                                                                 |
| str_entrevistas_ultimos_6_meses                    | STRING   | Você participou de entrevistas de emprego nos últimos 6 meses?                                           |
| str_mudanca_emprego_proximos_6_meses               | STRING   | Você pretende mudar de emprego nos próximos 6 meses?                                                    |
| str_criterios_decisao_trabalho                     | STRING   | Principais critérios que o usuário leva em consideração no momento de decidir onde trabalhar              |
| is_criterio_remuneracao                            | BOOLEAN  | Critério remuneração/Salário                                                                            |
| is_criterio_beneficios                             | BOOLEAN  | Critério benefícios                                                                                     |
| is_criterio_proposito_trabalho                     | BOOLEAN  | Critério propósito do trabalho e da empresa                                                               |
| is_criterio_flexibilidade_trabalho                 | BOOLEAN  | Critério flexibilidade de trabalho remoto                                                                |
| is_criterio_clima_trabalho                         | BOOLEAN  | Critério ambiente e clima de trabalho                                                                    |
| is_criterio_oportunidade_aprendizado               | BOOLEAN  | Critério oportunidade de aprendizado e trabalhar com referências na área                                |
| is_criterio_plano_carreira                         | BOOLEAN  | Critério plano de carreira e oportunidades de crescimento profissional                                    |
| is_criterio_maturidade_tecnologica                 | BOOLEAN  | Critério maturidade da empresa em termos de tecnologia e dados                                          |
| is_criterio_qualidade_lideres                      | BOOLEAN  | Critério qualidade dos gestores e líderes                                                                 |
| is_criterio_reputacao_empresa                      | BOOLEAN  | Critério reputação que a empresa tem no mercado                                                           |
| str_layoff_2023                                    | STRING   | Empresa que trabalhou passou por layoff em 2023                                                           |
| str_forma_trabalho_atual                           | STRING   | Atualmente qual a sua forma de trabalho?                                                                  |
| str_forma_trabalho_ideal                           | STRING   | Qual a forma de trabalho ideal para você?                                                               |
| str_reacao_modelo_presencial                       | STRING   | Caso sua empresa decida pelo modelo 100% presencial qual será sua atitude?                              |
| str_qtd_pessoas_dados                              | STRING  | Qual o número aproximado de pessoas que atuam com dados na sua empresa hoje?                            |
| str_papeis_time_dados                              | STRING   | Quais desses papéis/cargos fazem parte do time (ou chapter) de dados da sua empresa?                      |
| is_analytics_engineer                              | BOOLEAN  | Analytics Engineer                                                                                      |
| is_data_engineer                                   | BOOLEAN  | Engenharia de Dados/Data Engineer                                                                       |
| is_data_analyst                                    | BOOLEAN  | Analista de Dados/Data Analyst                                                                          |
| is_data_scientist                                 | BOOLEAN  | Cientista de Dados/Data Scientist                                                                       |
| is_dba                                             | BOOLEAN  | Database Administrator/DBA                                                                              |
| is_bi_analyst                                     | BOOLEAN  | Analista de Business Intelligence/BI                                                                    |
| is_data_architect                                  | BOOLEAN  | Arquiteto de Dados/Data Architect                                                                       |
| is_data_product_manager                            | BOOLEAN  | Data Product Manager/DPM                                                                               |
| is_business_analyst                                | BOOLEAN  | Business Analyst                                                                                       |
| str_responsabilidastr_gestor                       | STRING   | Quais dessas responsabilidades fazem parte da sua rotina atual de trabalho como gestor?                  |
| is_visao_longo_prazo                              | BOOLEAN  | Pensar na visão de longo prazo de dados da empresa e fortalecimento da cultura analítica da companhia.   |
| is_organizacao_treinamentos                        | BOOLEAN  | Organização de treinamentos e iniciativas com o objetivo de aumentar a maturidade analítica das áreas de negócios. |
| is_atracao_talentos                                | BOOLEAN  | Atração, seleção e contratação de talentos para o time de dados.                                        |
| is_decisao_ferramentas                             | BOOLEAN  | Decisão sobre contratação de ferramentas e tecnologias relacionadas a dados.                           |
| is_gestor_engenharia_dados                         | BOOLEAN  | Sou gestor da equipe responsável pela engenharia de dados e por manter o Data Lake da empresa como fonte única dos dados, garantindo a qualidade e confiabilidade da informação. |
| is_gestor_entregas                                | BOOLEAN  | Sou gestor da equipe responsável pela entrega de dados, estudos, relatórios e dashboards para as áreas de negócio da empresa. |
| is_gestor_ai_ml                                   | BOOLEAN  | Sou gestor da equipe responsável por iniciativas e projetos envolvendo Inteligência Artificial e Machine Learning. |
| is_gestor_atuacao_tecnica                          | BOOLEAN  | Apesar de ser gestor ainda atuo na parte técnica, construindo soluções/análises/modelos etc.             |
| is_gestao_projetos_dados                           | BOOLEAN  | Gestão de projetos de dados, cuidando das etapas, equipes envolvidas, atingimento dos objetivos etc.    |
| is_gestao_produtos_dados                           | BOOLEAN  | Gestão de produtos de dados, cuidando da visão dos produtos, backlog, feedback de usuários etc.         |
| is_gestao_pessoas                                 | BOOLEAN  | Gestão de pessoas, apoio no desenvolvimento das pessoas, evolução de carreira                           |
| str_desafios_gestor                                | STRING   | Quais são os 3 maiores desafios que você tem como gestor no atual momento?                              |
| is_contratar_talentos                              | BOOLEAN  | Contratar novos talentos.                                                                            |
| is_reter_talentos                                 | BOOLEAN  | Reter talentos.                                                                                     |
| is_convencer_investimentos_dados                   | BOOLEAN  | Convencer a empresa a aumentar os investimentos na área de dados.                                    |
| is_gestao_equipes_remoto                           | BOOLEAN  | Gestão de equipes no ambiente remoto.                                                                  |
| is_gestao_projetos_multidisciplinares               | BOOLEAN  | Gestão de projetos envolvendo áreas multidisciplinares da empresa.                                    |
| is_organizar_informacoes                           | BOOLEAN  | Organizar as informações e garantir a qualidade e confiabilidade.                                    |
| is_processar_armazenar_dados                       | BOOLEAN  | Conseguir processar e armazenar um alto volume de dados.                                              |
| is_gerar_valor_negocios                            | BOOLEAN  | Conseguir gerar valor para as áreas de negócios através de estudos e experimentos.                   |
| is_manter_modelos_ml                              | BOOLEAN  | Desenvolver e manter modelos Machine Learning em produção.                                           |
| is_gerenciar_expectativa_negocios                  | BOOLEAN  | Gerenciar a expectativa das áreas de negócio em relação às entregas das equipes de dados.             |
| is_manutencao_projetos_modelos                     | BOOLEAN  | Garantir a manutenção dos projetos e modelos em produção, em meio ao crescimento da empresa.          |
| is_inovacao_dados                                  | BOOLEAN  | Conseguir levar inovação para a empresa através dos dados.                                             |
| is_garantir_roi                                    | BOOLEAN  | Garantir retorno do investimento (ROI) em projetos de dados.                                           |
| is_dividir_tempo_tecnico_gestao                    | BOOLEAN  | Dividir o tempo entre entregas técnicas e gestão.                                                      |
| str_ai_generativa_prioridade                       | STRING   | AI Generativa é uma prioridade em sua empresa?                                                          |
| str_tipos_uso_ai_generativa                        | STRING   | Tipos de uso de AI Generativa e LLMs na empresa                                                         |
| is_colaboradores_uso_independente                  | BOOLEAN  | Colaboradores usando AI generativa de forma independente e descentralizada                              |
| is_direcionamento_centralizado_ai                  | BOOLEAN  | Direcionamento centralizado do uso de AI generativa                                                      |
| is_dev_usando_copilots                             | BOOLEAN  | Desenvolvedores utilizando Copilots                                                                     |
| is_ai_melhorar_produtos_externos                   | BOOLEAN  | AI Generativa e LLMs para melhorar produtos externos                                                    |
| is_ai_melhorar_produtos_internos                   | BOOLEAN  | AI Generativa e LLMs para melhorar produtos internos para os colaboradores                              |
| is_ai_frente_negocio                               | BOOLEAN  | IA Generativa e LLMs como principal frente do negócio                                                   |
| is_ai_nao_prioridade                               | BOOLEAN  | IA Generativa e LLMs não é prioridade                                                                   |
| is_nao_sabe_opinar_ia                              | BOOLEAN  | Não sei opinar sobre o uso de IA Generativa e LLMs na empresa                                           |
| str_motivos_nao_usar_ai                            | STRING   | Motivos que levam a empresa a não usar AI Generativa e LLMs                                             |
| is_falta_compreensao_casos_uso                     | BOOLEAN  | Falta de compreensão dos casos de uso                                                                    |
| is_falta_confiabilidade_ai                         | BOOLEAN  | Falta de confiabilidade das saídas (alucinação dos modelos)                                             |
| is_incerteza_regulamentacao                        | BOOLEAN  | Incerteza em relação a regulamentação                                                                    |
| is_preocupacoes_seguranca_privacidade              | BOOLEAN  | Preocupações com segurança e privacidade de dados                                                        |
| is_roi_nao_comprovado_ai                           | BOOLEAN  | Retorno sobre investimento (ROI) não comprovado de IA Generativa                                        |
| is_dados_nao_prontos_ai                            | BOOLEAN  | Dados da empresa não estão prontos para uso de IA Generativa                                           |
| is_falta_expertise                                | BOOLEAN  | Falta de expertise ou falta de recursos                                                                  |
| is_direcao_nao_ve_valor_ai                         | BOOLEAN  | Alta direção da empresa não vê valor ou não vê como prioridade                                          |
| is_preocupacoes_propriedade_intelectual            | BOOLEAN  | Preocupações com propriedade intelectual                                                                 |
| str_atuacao_informal                               | STRING   | Mesmo que esse não seja seu cargo formal, você considera que sua atuação no dia a dia reflete alguma das opções listadas abaixo? |
| str_atuacao_formal                                 | STRING   | Atuação                                                                                                 |
| str_fontes_dados_processados                       | STRING   | Quais das fontes de dados listadas você já analisou ou processou no trabalho?                           |
| is_dados_relacionais_processados                   | BOOLEAN  | Dados relacionais (estruturados em bancos SQL)                                                           |
| is_dados_nosql_processados                         | BOOLEAN  | Dados armazenados em bancos NoSQL                                                                        |
| is_imagens_processadas                             | BOOLEAN  | Imagens                                                                                                 |
| is_textos_processados                              | BOOLEAN  | Textos/Documentos                                                                                       |
| is_videos_processados                              | BOOLEAN  | Vídeos                                                                                                  |
| is_audios_processados                              | BOOLEAN  | Áudios                                                                                                  |
| is_planilhas_processadas                           | BOOLEAN  | Planilhas                                                                                                |
| is_dados_georeferenciados_processados               | BOOLEAN  | Dados georeferenciados                                                                                   |
| str_fontes_dados_mais_usadas                       | STRING   | Entre as fontes de dados listadas, quais você utiliza na maior parte do tempo?                          |
| is_dados_relacionais_mais_usados                   | BOOLEAN  | Dados relacionais (estruturados em bancos SQL)                                                           |
| is_dados_nosql_mais_usados                         | BOOLEAN  | Dados armazenados em bancos NoSQL                                                                        |
| is_imagens_mais_usadas                             | BOOLEAN  | Imagens                                                                                                 |
| is_textos_mais_usados                              | BOOLEAN  | Textos/Documentos                                                                                       |
| is_videos_mais_usados                              | BOOLEAN  | Vídeos                                                                                                  |
| is_audios_mais_usados                              | BOOLEAN  | Áudios                                                                                                  |
| is_planilhas_mais_usadas                           | BOOLEAN  | Planilhas                                                                                                |
| is_dados_georeferenciados_mais_usados               | BOOLEAN  | Dados georeferenciados                                                                                   |
| str_linguagens_utilizadas_trabalho                 | STRING   | Quais das linguagens listadas abaixo você utiliza no trabalho?                                          |
| is_sql_utilizada                                  | BOOLEAN  | SQL                                                                                                      |
| is_r_utilizada                                    | BOOLEAN  | R                                                                                                        |
| is_python_utilizada                                | BOOLEAN  | Python                                                                                                  |
| is_c_cplusplus_csharp_utilizada                    | BOOLEAN  | C/C++/C#                                                                                                |
| is_dotnet_utilizada                               | BOOLEAN  | .NET                                                                                                     |
| is_java_utilizada                                 | BOOLEAN  | Java                                                                                                     |
| is_julia_utilizada                                | BOOLEAN  | Julia                                                                                                    |
| is_sas_stata_utilizada                             | BOOLEAN  | SAS/Stata                                                                                               |
| is_visual_basic_vba_utilizada                      | BOOLEAN  | Visual Basic/VBA                                                                                       |
| is_scala_utilizada                                | BOOLEAN  | Scala                                                                                                    |
| is_matlab_utilizada                               | BOOLEAN  | Matlab                                                                                                  |
| is_rust_utilizada                                 | BOOLEAN  | Rust                                                                                                     |
| is_php_utilizada                                  | BOOLEAN  | PHP                                                                                                      |
| is_javascript_utilizada                           | BOOLEAN  | JavaScript                                                                                              |
| is_sem_linguagem_utilizada                         | BOOLEAN  | Não utilizo nenhuma linguagem                                                                           |
| str_linguagem_mais_utilizada_trabalho              | STRING   | Entre as linguagens listadas abaixo, qual é a que você mais utiliza no trabalho?                        |
| str_linguagem_preferida                            | STRING   | Entre as linguagens listadas abaixo, qual é a sua preferida?                                           |
| str_bancos_dados_utilizados_trabalho               | STRING   | Quais dos bancos de dados/fontes de dados listados abaixo você utiliza no trabalho?                     |
| is_mysql_utilizado                                 | BOOLEAN  | MySQL                                                                                                    |
| is_oracle_utilizado                               | BOOLEAN  | Oracle                                                                                                  |
| is_sql_server_utilizado                            | BOOLEAN  | SQL SERVER                                                                                              |
| is_amazon_rds_utilizado                            | BOOLEAN  | Amazon Aurora ou RDS                                                                                    |
| is_dynamodb_utilizado                              | BOOLEAN  | DynamoDB                                                                                               |
| is_couchdb_utilizado                              | BOOLEAN  | CouchDB                                                                                                 |
| is_cassandra_utilizado                            | BOOLEAN  | Cassandra                                                                                              |
| is_mongodb_utilizado                              | BOOLEAN  | MongoDB                                                                                                 |
| is_mariadb_utilizado                              | BOOLEAN  | MariaDB                                                                                                 |
| is_datomic_utilizado                              | BOOLEAN  | Datomic                                                                                                 |
| is_s3_utilizado                                  | BOOLEAN  | S3                                                                                                       |
| is_postgresql_utilizado                           | BOOLEAN  | PostgreSQL                                                                                             |
| is_elasticsearch_utilizado                        | BOOLEAN  | ElasticSearch                                                                                            |
| is_db2_utilizado                                 | BOOLEAN  | DB2                                                                                                      |
| is_access_utilizado                               | BOOLEAN  | Microsoft Access                                                                                       |
| is_sqlite_utilizado                               | BOOLEAN  | SQLite                                                                                                  |
| is_sybase_utilizado                               | BOOLEAN  | Sybase                                                                                                  |
| is_firebase_utilizado                             | BOOLEAN  | Firebase                                                                                                |
| is_vertica_utilizado                             | BOOLEAN  | Vertica                                                                                                 |
| is_redis_utilizado                                | BOOLEAN  | Redis                                                                                                   |
| is_neo4j_utilizado                               | BOOLEAN  | Neo4J                                                                                                   |
| is_bigquery_utilizado                             | BOOLEAN  | Google BigQuery                                                                                         |
| is_firestore_utilizado                            | BOOLEAN  | Google Firestore                                                                                        |
| is_redshift_utilizado                             | BOOLEAN  | Amazon Redshift                                                                                         |
| is_athena_utilizado                               | BOOLEAN  | Amazon Athena                                                                                            |
| is_snowflake_utilizado                            | BOOLEAN  | Snowflake                                                                                               |
| is_databricks_utilizado                           | BOOLEAN  | Databricks                                                                                              |
| is_hbase_utilizado                                | BOOLEAN  | HBase                                                                                                   |
| is_presto_utilizado                              | BOOLEAN  | Presto                                                                                                  |
| is_splunk_utilizado                              | BOOLEAN  | Splunk                                                                                                  |
| is_sap_hana_utilizado                            | BOOLEAN  | SAP HANA                                                                                                 |
| is_hive_utilizado                                | BOOLEAN  | Hive                                                                                                     |
| is_firebird_utilizado                            | BOOLEAN  | Firebird                                                                                                 |
| str_cloud_preferida                               | STRING   | Dentre as opções listadas, qual sua Cloud preferida?                                                     |
| is_azure_preferida                                | BOOLEAN  | Azure (Microsoft)                                                                                       |
| is_aws_preferida                                  | BOOLEAN  | Amazon Web Services (AWS)                                                                              |
| is_gcp_preferida                                  | BOOLEAN  | Google Cloud (GCP)                                                                                   
| is_oracle_cloud_preferida                   | BOOLEAN  | Oracle Cloud                                                     |
| is_ibm_preferida                            | BOOLEAN  | IBM                                                              |
| is_on_premise_preferida                     | BOOLEAN  | Servidores On Premise/Não utilizamos Cloud                       |
| is_cloud_propria_preferida                  | BOOLEAN  | Cloud Própria                                                     |
| str_cloud_preferencia                       | STRING   | Cloud preferida                                                   |
| str_ferramenta_bi_utilizada                 | STRING   | Ferramenta de BI utilizada no dia a dia                           |
| is_powerbi_utilizada                        | BOOLEAN  | Microsoft PowerBI                                                |
| is_qlik_utilizada                           | BOOLEAN  | Qlik View/Qlik Sense                                             |
| is_tableau_utilizada                        | BOOLEAN  | Tableau                                                           |
| is_metabase_utilizada                       | BOOLEAN  | Metabase                                                          |
| is_superset_utilizada                       | BOOLEAN  | Superset                                                          |
| is_redash_utilizada                         | BOOLEAN  | Redash                                                            |
| is_looker_utilizada                         | BOOLEAN  | Looker                                                            |
| is_looker_studio_utilizada                  | BOOLEAN  | Looker Studio (Google Data Studio)                                |
| is_quicksight_utilizada                     | BOOLEAN  | Amazon Quicksight                                                |
| is_mode_utilizada                           | BOOLEAN  | Mode                                                              |
| is_alteryx_utilizada                        | BOOLEAN  | Alteryx                                                           |
| is_microstrategy_utilizada                  | BOOLEAN  | MicroStrategy                                                     |
| is_cognos_utilizada                         | BOOLEAN  | IBM Analytics/Cognos                                              |
| is_sap_analytics_utilizada                  | BOOLEAN  | SAP Business Objects/SAP Analytics                                |
| is_oracle_bi_utilizada                      | BOOLEAN  | Oracle Business Intelligence                                      |
| is_einstein_analytics_utilizada             | BOOLEAN  | Salesforce/Einstein Analytics                                     |
| is_birst_utilizada                          | BOOLEAN  | Birst                                                             |
| is_sas_visual_analytics_utilizada           | BOOLEAN  | SAS Visual Analytics                                              |
| is_grafana_utilizada                        | BOOLEAN  | Grafana                                                           |
| is_spotfire_utilizada                       | BOOLEAN  | TIBCO Spotfire                                                    |
| is_pentaho_utilizada                        | BOOLEAN  | Pentaho                                                           |
| is_analises_excel_planilhas                  | BOOLEAN  | Fazemos todas as análises utilizando apenas Excel ou planilhas do google |
| is_sem_ferramenta_bi                        | BOOLEAN  | Não utilizo nenhuma ferramenta de BI no trabalho                  |
| str_ferramenta_bi_preferida                 | STRING   | Qual sua ferramenta de BI preferida?                              |
| str_tipo_uso_ai_generativa                  | STRING   | Qual o tipo de uso de AI Generativa e LLMs na empresa             |
| is_colaboradores_uso_independente           | BOOLEAN  | Colaboradores usando AI generativa de forma independente e descentralizada |
| is_direcionamento_centralizado              | BOOLEAN  | Direcionamento centralizado do uso de AI generativa               |
| is_dev_copilots                             | BOOLEAN  | Desenvolvedores utilizando Copilots                               |
| is_ai_produtos_externos                     | BOOLEAN  | AI Generativa e LLMs para melhorar produtos externos para os clientes finais |
| is_ai_produtos_internos                     | BOOLEAN  | AI Generativa e LLMs para melhorar produtos internos para os colaboradores |
| is_ai_principal_frente_negocio              | BOOLEAN  | IA Generativa e LLMs como principal frente do negócio             |
| is_ai_nao_prioridade                        | BOOLEAN  | IA Generativa e LLMs não é prioridade                             |
| is_nao_sabe_opinar_ai                       | BOOLEAN  | Não sei opinar sobre o uso de IA Generativa e LLMs na empresa     |
| is_utiliza_chatgpt                          | BOOLEAN  | Utiliza ChatGPT ou LLMs no trabalho?                              |
| is_sem_uso_produtividade_ai                 | BOOLEAN  | Não uso soluções de AI Generativa com foco em produtividade       |
| is_uso_gratuito_produtividade_ai            | BOOLEAN  | Uso soluções gratuitas de AI Generativa com foco em produtividade |
| is_uso_pago_produtividade_ai                 | BOOLEAN  | Uso e pago pelas soluções de AI Generativa com foco em produtividade |
| is_empresa_paga_produtividade_ai             | BOOLEAN  | A empresa que trabalho paga pelas soluções de AI Generativa com foco em produtividade |
| is_uso_copilot                              | BOOLEAN  | Uso soluções do tipo Copilot                                      |
| str_objetivo_area_dados                     | STRING   | Qual seu objetivo na área de dados?                               |
| str_oportunidade_buscada                    | STRING   | Qual oportunidade você está buscando?                             |
| num_tempo_busca_oportunidade                | STRING   | Há quanto tempo você busca uma oportunidade na área de dados?      |
| str_busca_emprego_area_dados                | STRING   | Como tem sido a busca por um emprego na área de dados?            |
| str_rotina_eng_dados_ed                     | STRING   | Quais das opções abaixo fazem parte da sua rotina no trabalho atual como engenheiro de dados? |
| is_pipelines_programacao_ed                 | BOOLEAN  | Desenvolvo pipelines de dados utilizando linguagens de programação como Python, Scala, Java etc. |
| is_construcoes_etl_ed                       | BOOLEAN  | Realizo construções de ETL's em ferramentas como Pentaho, Talend, Dataflow etc. |
| is_consultas_sql_ed                         | BOOLEAN  | Crio consultas através da linguagem SQL para exportar informações e compartilhar com as áreas de negócio. |
| is_integracao_fontes_dados_ed               | BOOLEAN  | Atuo na integração de diferentes fontes de dados através de plataformas proprietárias como Stitch Data, Fivetran etc. |
| is_modelo_arquitetura_dados_ed              | BOOLEAN  | Modelo soluções de arquitetura de dados, criando componentes de ingestão de dados, transformação e recuperação da informação. |
| is_manutencao_repositorios_dados_ed          | BOOLEAN  | Desenvolvo/cuido da manutenção de repositórios de dados baseados em streaming de eventos como Data Lakes e Data Lakehouses. |
| is_modelagem_dados_ed                       | BOOLEAN  | Atuo na modelagem dos dados, com o objetivo de criar conjuntos de dados como Data Warehouses, Data Marts etc. |
| is_qualidade_dados_ed                       | BOOLEAN  | Cuido da qualidade dos dados, metadados e dicionário de dados.      |
| is_nenhuma_reflete_ed                       | BOOLEAN  | Nenhuma das opções listadas refletem meu dia a dia.                |
| str_ferramentas_etl_ed                      | STRING   | Quais as ferramentas/tecnologias de ETL que você utiliza no trabalho como Data Engineer? |
| is_scripts_python_ed                        | BOOLEAN  | Scripts Python                                                    |
| is_sql_stored_procedures_ed                 | BOOLEAN  | SQL & Stored Procedures                                          |
| is_apache_airflow_ed                        | BOOLEAN  | Apache Airflow                                                   |
| is_apache_nifi_ed                           | BOOLEAN  | Apache NiFi                                                       |
| is_luigi_ed                                | BOOLEAN  | Luigi                                                             |
| is_aws_glue_ed                             | BOOLEAN  | AWS Glue                                                          |
| is_talend_ed                               | BOOLEAN  | Talend                                                            |
| is_pentaho_ed                              | BOOLEAN  | Pentaho                                                           |
| is_alteryx_ed                              | BOOLEAN  | Alteryx                                                           |
| is_stitch_ed                               | BOOLEAN  | Stitch                                                            |
| is_fivetran_ed                             | BOOLEAN  | Fivetran                                                          |
| is_google_dataflow_ed                       | BOOLEAN  | Google Dataflow                                                   |
| is_oracle_data_integrator_ed                | BOOLEAN  | Oracle Data Integrator                                            |
| is_ibm_datastage_ed                         | BOOLEAN  | IBM DataStage                                                     |
| is_sap_bw_etl_ed                            | BOOLEAN  | SAP BW ETL                                                        |
| is_ssis_ed                                 | BOOLEAN  | SQL Server Integration Services (SSIS)                            |
| is_sas_data_integration_ed                  | BOOLEAN  | SAS Data Integration                                              |
| is_qlik_sense_ed                            | BOOLEAN  | Qlik Sense                                                        |
| is_knime_ed                                | BOOLEAN  | Knime                                                             |
| is_databricks_ed                            | BOOLEAN  | Databricks                                                        |
| is_nao_utiliza_etl_ed                       | BOOLEAN  | Não utilizo ferramentas de ETL                                    |
| is_possui_data_lake_ed                      | BOOLEAN  | Sua organização possui um Data Lake?                              |
| str_tecnologia_data_lake_ed                 | BOOLEAN  | Qual tecnologia utilizada como plataforma do Data Lake?           |
| is_possui_data_warehouse_ed                 | BOOLEAN  | Sua organização possui um Data Warehouse?                         |
| str_tecnologia_data_warehouse_ed            | STRING   | Qual tecnologia utilizada como plataforma do Data Warehouse?      |
| str_ferramentas_qualidade_dados_ed          | STRING   | Quais as ferramentas de gestão de Qualidade de dados, Metadados e catálogo de dados você utiliza no trabalho? |
| str_atividade_maior_tempo_ed                | STRING   | Em qual das opções abaixo você gasta a maior parte do seu tempo?   |
| is_pipelines_programacao_maior_tempo_ed     | BOOLEAN  | Desenvolvendo pipelines de dados utilizando linguagens de programação como Python, Scala, Java etc. |
| is_construcoes_etl_maior_tempo_ed           | BOOLEAN  | Construindo ETL's em ferramentas como Pentaho, Talend, Dataflow etc. |
| is_consultas_sql_maior_tempo_ed             | BOOLEAN  | Criando consultas através da linguagem SQL para exportar informações e compartilhar com as áreas de negócio. |
| is_integracao_fontes_dados_maior_tempo_ed   | BOOLEAN  | Integração de diferentes fontes de dados através de plataformas proprietárias como Stitch Data, Fivetran etc. |
| is_modelo_arquitetura_dados_maior_tempo_ed  | BOOLEAN  | Modelagem de soluções de arquitetura de dados, criando componentes de ingestão de dados, transformação e recuperação da informação. |
| is_manutencao_repositorios_dados_maior_tempo_ed | BOOLEAN  | Desenvolvimento/Manutenção de repositórios de dados baseados em streaming de eventos como Data Lakes e Data Lakehouses. |
| is_modelagem_dados_maior_tempo_ed           | BOOLEAN  | Modelagem dos dados, com o objetivo de criar conjuntos de dados como Data Warehouses, Data Marts etc. |
| is_qualidade_dados_maior_tempo_ed           | BOOLEAN  | Qualidade dos dados, metadados e dicionário de dados.              |
| is_nao_reflete_maior_tempo_ed               | BOOLEAN  | Nenhuma das opções listadas reflete a maior parte do meu tempo.    |
| str_tempo_atividade_maior_tempo_ed          | STRING   | Qual atividade do seu dia a dia você gasta a maior parte do seu tempo? |

