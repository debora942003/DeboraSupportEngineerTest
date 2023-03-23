# Utilizzo del cronjob per automatizzare un backup via ssh
Il seguente esercizio illustra come creare un backup ogni domenica notte (0:00).

Il backup sarà fatto dalla carella /home/debora della mia macchina alla cartella remota /home/root/backup della macchina avente indirizzo 192.168.1.100.

Per tale proposito sarà utilizzato il comando scp che copia via ssh i dati dalla macchina principale a quella remota.

Come richiesto si simula che ci sia già configurata una coppia di chiavi pubblica e privata che permettono di usare il comando scp senza richiedere la password dell'utente root.

## Configurazione del cronjob
### Avviare il servizio cron

    service cron start
### Modificare il crontab
#### Comando
    crontab -e

#### Contenuto

    0 0 * * SUN     scp -r /home/debora/ root@192.168.1.100:/home/root/backups

> Dove il primo zero sta per il minuto zero, il secondo zero sta per
> mezzanotte, il primo asterisco sta per un qualsiasi giorno del mese
> (inteso come numero), il secondo asterisco sta per un qualsiasi mese e
> SUN sta per domenica.

## Simulazione creazione coppia chiavi pubblica/privata

### Generazione chiave

    ssh-keygen

### copia della chiave privata nella macchina remota

    ssh-copy-id 192.168.1.100







