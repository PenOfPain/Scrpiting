#!/bin/bash

#Créer un répertoire comportant le nom du script dans ./tmp/
mkdir -p ./tmp/menu

#Déplacer vous dans ce répertoire
cd ./tmp/menu


while [ "$done" != true ]; do
#affichage du menu
cat << EOF
########################
###MENU PRINCIPAL###
1 - Télechargement
2 - Archivage
3 - Sauvegarde
4 - Quitter
########################
EOF

read userOption

case $userOption in
	1)	../functions/menuDL.sh
		;;	 
	2)	
		;;
	3)	../functions/sauvegarde.sh
		;;	 
	4) done="true"
		;;
	*) 
		;;
esac

done

