# br-covid19CSVExtract

Extract CSV file from the oficial Brazilian Convid-19 Website (https://covid.saude.gov.br)

*Read this in other languages: [English](README.md), [Português](README.pt-br.md).*

The Brazililan official health authority provides a panel for all the cases of Covid19 in Brazil by states. You can find the download button to the actual CSV file. 

If you thought about automate this process then you are in the right place.

To download the latest CSV you can execute the following script:
```
/bin/bash getCovid19CSVData.sh
```
> ATTENTION: The "CSV" uses ";" as the separator 

###### Examples
1. Getting only the data from Rio de Janeiro state: 

```
/bin/bash getCovid19CSVData.sh | sed '1p/;RJ;/!d'
```

### How to contribute
If Shell script is not what are you looking for and you think you can contribute using any other programming language, feel free to use the same strategy. I can also add a reference to your project. 





