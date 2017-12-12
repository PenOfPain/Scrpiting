#!/bin/bash


#Télechargement via arguments
cd ../../tmp/download
youtube-dl $1 -o ./$(date +%d-%Y-%m_%I-%M-%S)


