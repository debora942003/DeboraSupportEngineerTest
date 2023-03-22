#!/usr/bin/bash

#Crea la variabile directory e dalle il valore del parametro in ingresso $1
#$1 contiene la directory inserita quando si esegue lo script
directory=$1;

#Dichiariamo l'array counts (-A sta per array)
declare -A counts;

#Cicliamo ogni file dentro la variabile $directory
for file in "$directory"/*
do
  #Verifichiamo che il file sia uno script (con -x) e che contenga lo shebang interpreter 
  #($(head -n 1 "$file")" =~ ^\#\!) dove $(head -n 1 "$file") sta per la prima riga di testo del file
  if [[ -x "$file" && "$(head -n 1 "$file")" =~ ^\#\! ]]
  then
    #Estraiamo la prima riga del file ossia lo shebang interpreter ($(head -n 1 "$file"))
    shebang=$(head -n 1 "$file")
    
    #Aumentiamo il contatore degli shebang
    (( counts["$shebang"]++ ))
  else
    echo "Nessuno script trovato";
  fi
done

# Stampa il totale degli shebang sommati
for shebang in "${!counts[@]}"
do
  echo "${counts[$shebang]} $shebang"
done

# Alla fine di tutto cancella l'array
unset -v counts
