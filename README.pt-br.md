![Script Test](https://github.com/gpcarmo/br-covid19CSVExtract/workflows/Script%20Test/badge.svg)

# br-covid19CSVExtract

> :weary: Depois da ultima atuliazação do site oficial, o arquivo que antes era em formato CSV agora está sendo disponibilizado em formato MS Excel.

Extrai o CSV do site oficial do governo federal https://covid.saude.gov.br

*Ler este documento em outras línguas: [English](README.md), [Português](README.pt-br.md).*

O Ministério da Saúde do Brasil fornece um Painel de casos de doença pelo coronavírus 2019 (COVID-19). No próprio painel existe um link para o download do arquivo CSV. 

Se você pensou em automatizar esse processo, então você está no lugar certo.

Para fazer o download do CSV atualizado até a data de hoje, basta executar o script:
```
/bin/bash getCovid19CSVData.sh
```
> ATENÇÃO: o arquivo "CSV" utiliza ";" como separador

###### Exemplos
1. Pegando apenas os dados do estado do Rio de Janeiro

```
/bin/bash getCovid19CSVData.sh | sed '1p/;RJ;/!d'
```

### Como contribuir
Se shell script não era o que você estava procurando e você acha que pode contribuir usando outro tipo de linguagem de programação, fique a vontade em usar a mesma estratégia. Podemos adicionar o link do projeto aqui também.





