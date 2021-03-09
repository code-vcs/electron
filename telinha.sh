#!/bin/bash
clear
HOJE=$(date +%d/%m/%y%y)

	form=$(
	yad --width 650 --height 650 --title="Tela Linux" --text "Dados de Acesso\n\n\n" \
	--image="/home/serv/Imagens/term.png" \
	--form \
	--field "Data Atual: ":RO "$HOJE" \
	--field "":LBL "\n\n" \
	--field "Sistema Operacional de Preferencia: ":CB Linux!Windows!MCOS \
	--field "Entre com o seu Nome: " "" "" \
	--field "Qual a sua Idade: ":NUM \
	--field "Sexlo: ":CB Masculino!Feminino \
	--field "Dia Mês e Ano de Nascimento: ":DT \
	--button '/home/serv/Imagens/terminal_linux.png' \
	--expander="    <<<<<    Clique Aqui   >>>>>    " \
	--button=Cadastrar \
	--button=Fechar \
	--borders=150 \
	--fullscreen \
	)

clear
DATA=$(echo "$form" | cut -d'|' -f1)
SISTEMA=$(echo "$form" | cut -d'|' -f3)
NOME=$(echo "$form" | cut -d'|' -f4)
IDADE=$(echo "$form" | cut -d'|' -f5) 


echo "$DATA"
echo "$SISTEMA"
echo "$NOME"
echo "$IDADE"
