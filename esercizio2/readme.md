# Esercizio 2
## Funzionalità
Il seguente script conta per ciascun file di una directory passata come parametro, il numero di occorrenze di ciascun shebang di ogni file.
Lo script controlla prima se il file sia uno script (quindi eseguibile -x) e che la prima riga contenga uno shebang.
Un array avente come indice lo shebang conterrà la sommatoria delle sue occorrenze e verrà stampato come output.

## Utilizzo
### Eseguire lo script

    . script.sh target

> Dove **target** è la cartella passata come parametro
### Output dello script
    3 #!/usr/bin/perl
    1 #!/bin/sh
    1 #!/usr/bin/perl5.18

