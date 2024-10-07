# Indice



- [🪶 Contexto](#-contexto)
- [🔎 Oportunidade](#-oportunidade)
- [👨🏾‍💻 Proposta de Solução](#-proposta-de-solu-o)
- [🔑 Métricas de sucesso](#-m-tricas-de-sucesso)
- [🔨  Principais Ferramentas / Tecnologias](#-principais-ferramentas-tecnologias)
- [🗺️  Arquitetura da pipeline de dados](#-arquitetura-da-pipeline-de-dados)
- [📅 Cronograma](#-cronograma)

<br>

# 🪶 Contexto

![Data Hackers State of Data Brazil 2023](state_of_data_brazil_2023/images/banner2.png)

Desde 2021, a comunidade Data Hackers e a Bain Company vêm desenvolvendo uma pesquisa com foco em obter um raio-X do mercado de dados. O relatório é disponibilizado em formato PDF para organizações e profissionais ao acessarem o [site](https://stateofdata.datahackers.com.br/). Além disso, eles estimulam a comunidade de dados a desenvolver suas próprias análises, disponibilizando o dataset no [Kaggle](https://www.kaggle.com/datasets/datahackers/state-of-data-brazil-2023/data).

A última pesquisa, realizada no ano de 2023, reuniu 5.293 respostas com indicadores sobre perfil demográfico, formação, conhecimentos necessários para atuação na área, remuneração e muito mais.

<br>

# 🔎 Oportunidade
Existe um interesse crescente no mercado de trabalho por vagas na área de dados, onde um dos principais fatores de motivação é o salário médio inicial, considerado acima da média em comparação a profissões tradicionais.

O fato é que muitas pessoas estão buscando uma oportunidade para entrar no mercado de dados, seja vindo de uma transição de carreira mais consolidada ou iniciando uma nova, e **não sabem qual o melhor caminho a seguir**.

Mesmo com fontes de dados disponíveis como o relatório do State of Data Brazil, o público em transição acaba não consumindo esses dados como fonte primária para a tomada de decisão.

<br>

![Volume de Busca Analista de Dados](state_of_data_brazil_2023/images/volume_buscas_analista.png)

![Top Palavras Chaves Analista de Dados](state_of_data_brazil_2023/images/keywords_analista_de_dados.png)

![Google Trends Top Áreas](state_of_data_brazil_2023/images/google_trends.png)


*<center> Legenda: Análise de Palavras Chaves no Ubbersugest e Google Trends </center>*

<br>

# 👨🏾‍💻 Proposta de Solução
Pensando em solucionar esse problema e trazer uma orientação para quem está ingressando no mercado, com um recorte para a profissão de analista de dados, uma das mais pesquisadas nos últimos 12 meses, propõe-se o desenvolvimento de um painel interativo e acessível que sugere, com base na pesquisa do *State of Data* e na frequência das respostas, **o melhor caminho para aqueles que querem ingressar na área como Analista de Dados**.



<br>

# 🔑 Métricas de sucesso
- Alcançar 1.000 acessos no Dashboard em 30 dias
- Aumentar em 10% o número de downloads da base de dados original do Kaggle em 30 dias

<br>

![Métricas Kaggle](state_of_data_brazil_2023/images/metricas_kaggle.png)

<br>



# 🔨  Principais Ferramentas / Tecnologias 

- VScode
- Git/Github
- Python 3.11
- GCP (Google Cloud Storage e Bigquery)
- Figma
- Tableau

<br>

# 🗺️  Arquitetura da pipeline de dados 

![Arquitetura](state_of_data_brazil_2023/images/arquitetura.excalidraw.png)

<br>

# 📅 Cronograma 


| Atividade               |Data Prevista | Data Conclusão |
|-------------------------|--------------|-------------|
| Discovery     | 21/09/24       | <ul><li>- [x] </li>      |
| Documentação Tabela camada Raw           | 05/10/24       | <ul><li>- [x] </li>    |
| Documentação Tabela camada Trusted           | 05/10/24       | <ul><li>- [x] </li>    |
| ELT - Tabela camadas Stage / RAW   | 19/10/24   | <ul><li>- [ ] </li> |
| ELT - Tabela Trusted    | 26/10/24   | <ul><li>- [ ] </li> |
| Protótipo (Dashboard)  | 09/11/24       | <ul><li>- [ ] </li>      |
| ELT - Tabela camada Refined    | 23/11/24   | <ul><li>- [ ] </li> |
| Dashboard               | 07/12/24       | <ul><li>- [ ] </li>     |

<br>

💡 Esse repositório utiliza o padrão de [commits semânticos](https://github.com/iuricode/padroes-de-commits) em seu desenvolvimento.

<br>

___
<em> Obs: Para acompanhar mais sobre as descobertas e insights desse projeto, siga meu perfil no [Linkedin](https://www.linkedin.com/in/francinisantana/) 💛 <em>
