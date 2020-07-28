#!/bin/bash
echo "Scan comecou as:"
date
echo "  "
for letter in $(cat lista.txt)
do
resposta=$(curl -s -o /dev/null -w "%{http_code}" $1/$letter/)
if [ $resposta == "200" ]
then
	echo "  "
	echo "########################################"
	echo "========> Diretorio encontrado: $1$letter/"
	echo "########################################"
	echo "  "
else 
	echo "==> Diretorio nao encontrado: $letter"
fi
done
echo "  "
echo "Scan finalizado as:" 
date
echo "====> Created by xDarkVision <===="
