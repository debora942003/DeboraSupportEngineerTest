#!/usr/bin/bash
#Assegniamo i parametri alle variabili
stringa1=$1;
stringa2=$2;
directory=$3;

#Stampiamo i valori delle variabili
echo "Stringa 1: $stringa1";
echo "Stringa 2: $stringa2";
echo "Nome directory: $directory";

#Processiamo i file all'interno della directory
#File è il nome della variabile che conterrà il nome del file nella directory per ciascun giro del ciclo for
#Quindi se dentro la directory avremo 3 file, al primo giro file avrà il valore del nome del primo file
#al secondo giro file avrà il valore del nome del secondo file e così via.
for file in "$directory"/*
do 
  #verifico che il file $file sia un file (-f "$file" restituisce true se $file è un file)      	
  if [ -f $file ]; then
    #sed -i serve per sostituire il valore di $stringa1 con il valore di $stringa2 all'interno del file $file
    sed -i "s/$stringa1/$stringa2/g" $file
  fi
done

