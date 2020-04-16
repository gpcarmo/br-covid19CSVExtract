# br-covid19CSVExtract
Extrai o CSV do site oficial do governo federal https://covid.saude.gov.br

O Ministério da Saúde do Brasil fornece um Painel de casos de doença pelo coronavírus 2019 (COVID-19). No próprio painel existe um link para o download do arquivo CSV. 

Se você pensou em automatizar esse processo, então você está no lugar certo.

Para fazer o download do CSV atualizado até a data de hoje, basta executar o script:
```
sh getCovid19CSVData.sh
```
###### Exemplos
Pegando apenas os dados do estado do Rio de Janeiro

```
sh getCovid19CSVData.sh | sed '1p/;RJ;/!d'
```

> ATENÇÃO: o arquivo "CSV" utiliza ";" como separador




