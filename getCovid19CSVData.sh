#!/bin/sh

# faz o download do site para dentro de ./covid.saude.gov.br
wget -q -r -np -k https://covid.saude.gov.br 

# pega todos os arquivos JS que o app pussui.
# ps.: esperamos que tenha apenas 1 arquivo runtime-es2015
js_files=$(cat ./covid.saude.gov.br/runtime-es2015.*.js | sed -e 's/^.*-es2015.*{\(.*\)}.*..js.*$/\1/g' | sed -e 's/"//g' | sed -e 's/:/-es2015./g'| tr ',' ' ')

for js in $js_files
do
  # faz o download de cada javascript e procura pela dupla 
  # X-Parse-Application-Id e encodeURI do PortalGeral 
  a=($(curl -s "https://covid.saude.gov.br/$js.js" | sed -e 's/^.*"X-Parse-Application-Id","\(.*\)"),this.http.get(encodeURI("\(.*\)prod.*$/\1 \2prod\/PortalGeral/g' | tr ' ' '\n'))

  # Se as variaveis foram encontradas pegamos a url do arquivo csv e 
  # fazemos o dowload direto para o sdtout
  [ ! -z "${a[0]}" ] && [ ! -z "${a[1]}" ] && b=$(curl -s -H "X-Parse-Application-Id: ${a[0]}" "${a[1]}" | sed -e 's/^.*url":"\(.*\).csv".*$/\1.csv/g') && [ ! -z "$b" ] && curl -s $b && break

done

#TODO: remove o diretorio covid.saude.gov.br ?
# rm -rf ./covid.saude.gov.br 

exit

