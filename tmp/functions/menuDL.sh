#!/bin/bash


function telechargement() {
cd ../url
		for ligne in $(cat youtubeLink)
		do
			
			name=$(awk -F"=" '{print $2}' <<< $ligne)
			decoupe=${name:0:1}
			nameUP=${decoupe^^}
			echo "$nameUP"
			mkdir ../archive/$nameUP
			youtube-dl $ligne -o  ../archive/$nameUP/$name >>../log/success_dl.log 2>>../log/errors_cmd.log
			sleep 1

		done
}

telechargement


