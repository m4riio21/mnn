#!/bin/bash

#Done by m4riio21 - https://github.com/m4riio21

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
}	

function awk(){
	echo -e "\n ${blue}[*]${end}${yellow} AWK ${end}"
	echo -e "\n\t${yellow}[-F' ']${end}${gray} Flag para indicar el separador de campos ${end}${blue}(: , . /)${end}"
	echo -e "\n\t${yellow}[\$n]${end}${gray} Cada uno de los campos en los que se divide el input ${end}${blue}(\$0 es todo el input)${end}"
	echo -e "\n\t${yellow}[NF]${end}${gray} Variable que indica el numero de campos de una fila y sobre la que se puede operar${end}"
	echo -e "\t${turquoise}(awk 'NF > 4 {print}' fichero) ${end}${blue}Muestra las lineas con mas de 4 campos del fichero${end}"
	echo -e "\n\t${yellow}[NR]${end}${gray} Variable que indica el numero de lineas del input y sobre la que se puede operar${end}"
	echo -e "\t${turquoise}(awk 'NR < 50 {print}' fichero) ${end}${blue}Muestra las primeras 50 lineas del fichero${end}"
	echo -e "\n\t${blue}[!] ESTRUCTURA (BÁSICA) DEL COMANDO${end}"
	echo -ne "\n\t${yellow}awk -F'${end}${red}: , . /"; echo -e "${end}${yellow}' ${end}${yellow}{accion}"
	echo -e "\n\t${blue}[!] EJEMPLOS"

}

function sed(){
	echo -e "\n ${blue}[*]${end}${yellow} SED ${end}"
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