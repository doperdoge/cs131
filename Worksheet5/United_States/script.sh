#!/bin/bash

IFS=$'\n'
for i in $(cat Global\ YouTube\ Statistics.csv)
do 
	echo $i | awk -F',' '{if($9 == "US") print $0}' | awk -F',' '{if($5 == "Entertainment") print $0 >> "/mnt/scratch/SP24_CS131_Jyotika/connersp24/cs131/Worksheet5/United_States/Entertainment.txt"} {if($5 == "Music") print $0 >> "/mnt/scratch/SP24_CS131_Jyotika/connersp24/cs131/Worksheet5/United_States/Music.txt"} {if($5 == "Gaming") print $0 >> "/mnt/scratch/SP24_CS131_Jyotika/connersp24/cs131/Worksheet5/United_States/Gaming.txt"} {if($5 == "Comedy") print $0 >> "/mnt/scratch/SP24_CS131_Jyotika/connersp24/cs131/Worksheet5/United_States/Comedy.txt"}'
done	
