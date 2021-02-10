#!/bin/bash

#Colours
green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"

#echo -e "\n\t${yellow}[- ]${end}${gray}  ${end}"




#Functions
function grep(){
	echo -e "\n ${blue}[*]${end}${yellow} GREP ${end}"
	echo -e "\n\t${yellow}[-w]${end}${gray} Busca literalmente el string que se le introduce${end}"
	echo -e "\n\t${yellow}[-E]${end}${gray} Permite buscar sobre varias entradas, separadas por | ${end}${blue} (Ejemplo: grep -e 'Hola|Adios')${end}"
	echo -e "\n\t${yellow}[-i]${end}${gray} Busca sin tener en cuenta mayusculas/minusculas ${end}"
	echo -e "\n\t${yellow}[-v]${end}${gray} Muestra las lineas que ${red}NO${end} ${gray}coinciden con el string introducido${end}"
	echo -e "\n\t${yellow}[-c]${end}${gray} Cuenta el numero de lineas que contienen el string introducido ${end}"
	echo -e "\n\t${yellow}[-A ${end}${red}'n'${yellow}]${end}${gray} Muestra la linea encontrada y las ${end}${red} n inferiores ${end}"
	echo -e "\n\t${yellow}[-B ${end}${red}'n'${yellow}]${end}${gray} Muestra la linea encontrada y las ${end}${red} n superiores ${end}"
	echo -e "\n\t${yellow}[-C ${end}${red}'n'${yellow}]${end}${gray} Muestra la linea encontrada y las ${end}${red} n inferiores y superiores ${end}\n"
}

function tr(){
	echo -e "\n ${blue}[*]${end}${yellow} TR ${end}"
	echo -e "\n\t${yellow}Uso:${end}${gray} tr ${end}${yellow}'patternInicial' 'patternFinal' ${end}"
	echo -e "\n\t${yellow}[-d ${end}${red}'pattern'${end}${yellow}]${end}${gray} Busca el pattern introducido en el input y lo borra (delete)${end}"
	echo -e "\n\t${blue}[!] EJEMPLOS"
	echo -e "\n\t\t${yellow} [*] cat file | tr [a-z] [A-Z]"
	echo -e "\n\t\t${gray} Cambia todas las letras minusculas a mayusculas"
	echo -ne "\n\t\t${yellow} [*] echo 'PID proceso: $PID' | tr ' ' "; echo "'\n'"
	echo -e "\n\t\t${gray} Cambia los espacios a saltos de linea"
	echo -e "\n\t\t${yellow} [*] echo 'Numero: 123' | tr [:digit:] "
	echo -e "\n\t\t${gray} Tan solo muestra los digitos"
	echo
}	

function awk(){
	echo ""
}

function sed(){
	echo ""
}

function error(){
	echo -e "\n${red} [!] Error! Entrada no válida..\n"
}





#Main
arg=$1
case $arg in
	grep) clear; grep;;
	tr) clear; tr;;
	awk) clear; awk;;
	sed) clear; sed;;
	*) error;;
esac