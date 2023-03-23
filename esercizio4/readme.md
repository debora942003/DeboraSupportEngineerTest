# Progetto di rilascio del nuovo sito Wordpress
## Introduzione
In questo documento, vorrei presentare la mia soluzione proposta per la distribuzione di un nuovo sito WordPress. Come richiesto, la mia soluzione si concentrerà sull'automazione della creazione dell'infrastruttura e sulla configurazione dell'applicazione, nonché sulla garanzia di sicurezza, velocità, tolleranza ai guasti e capacità di adattamento al carico medio.

Come piccolo appunto, mi permetto di specificare che non ho mai utilizzato personalmente alcune delle tecnologie che proporrò, come Ansible e AWS, ma ho svolto ricerche e ho appreso le basi dello loro funzionalità. 

La possibile partecipazione al corso mi permetterebbe di acquisire le conoscenze necessarie per implementare queste soluzioni in modo efficace ed efficiente.

## Automazione creazione ambiente Wordpress
Per automatizzare la creazione dell'infrastruttura e la configurazione dell'applicazione, ho intenzione di utilizzare **Ansible**. Ansible è uno strumento di automazione molto potente. Pur non avendolo mai utilizzato, dopo una preliminare fase di ricerca, ho trovato sia la soluzione migliore per questo progetto.

Con Ansible, sarà possibile definire le azioni necessarie per installare e configurare WordPress, il server web e le impostazioni di sicurezza. Inoltre, Ansible può essere utilizzato per gestire e configurare il firewall e per installare eventuali dipendenze necessarie per il corretto funzionamento dell'applicazione.

L'automazione delle azioni necessarie all'installazione e alla configurazione di WordPress e del server web verrà gestita dai playbook Ansible. I playbook sono file di configurazione scritti in formato YAML, che definiscono le azioni da eseguire sui server target. Essi rappresentano un insieme di task eseguibili su una o più macchine, che permettono di automatizzare la configurazione e l'amministrazione dei sistemi.

### Esempio di azioni svolte dal playbook

 - Installare Apache sul server
 - Configurare Apache 
 - Installare PHP e le relative dipendenze
 - Scaricare la versione di WordPress che si desidera dal sito ufficiale. 
 - Decomprimere l'archivio di WordPress e copiare i file nella directory del server web.
 - Creare un database MySQL per WordPress.
 - Creare un utente MySQL con i privilegi necessari per accedere al database.
 - Configurare WordPress per utilizzare il database MySQL.
 - Configurare WordPress per utilizzare il server web Apache.


## Soluzioni per ambiente di hosting
Per quanto riguarda l'ambiente di hosting, so che **AWS** offre diverse soluzioni per la distribuzione di un sito WordPress, come **Amazon Lightsail** e **Amazon EC2**.  Come precedentemente detto in fase colloquiale, non ho esperienza diretta con AWS e le sue soluzioni di hosting. Per questo motivo, mi cimenterò nello studiare e apprendere le soluzioni di AWS al fine di poterle utilizzare in futuro.

## Sicurezza dell'applicazione
Per quanto riguarda la sicurezza dell'applicazione, ci sono diverse soluzioni che possono essere adottate per garantire che i dati degli utenti e del sito siano al sicuro. Ad esempio, l'utilizzo di un **certificato SSL** può garantire che la connessione tra il browser dell'utente e il server sia criptata e sicura. Inoltre, l'implementazione di un sistema di **strong authentication**, come l'autenticazione a due fattori, può prevenire attacchi di phishing e di hacking.

## Velocità dell'applicazione
Per quanto riguarda la velocità dell'applicazione, ci sono diverse tecniche che possono essere utilizzate per ottimizzare le prestazioni del sito. Ad esempio, l'utilizzo di un **sistema di caching** può ridurre i tempi di caricamento delle pagine e migliorare l'esperienza dell'utente. Inoltre, **l'ottimizzazione delle immagini** e la riduzione del numero di richieste HTTP possono migliorare notevolmente le prestazioni del sito.

## Fault tolerance
Per quanto riguarda la fault tolerance, è importante garantire che l'applicazione sia in grado di gestire eventuali interruzioni di servizio o problemi tecnici. 
Una soluzione base potrebbe essere quella del **mirroring**, ossia di avere una copia speculare dell'unità disco, dov'è contenuto tutto l'applicativo, così da avere un backup in caso di guasti o errori.
Per questi ultimi bisogna adattare un **sistema di monitoraggio** e di **log** per poter intercettare gli errori nel modo più rapido possibile.

## Adattabilità a situazioni di traffico medio
Per quanto riguarda l'adattabilità a situazioni in cui il traffico del sito web diventa molto elevato, è importante assicurarsi che quest'ultimo sia in grado di adattarsi all'elevato utilizzo di risorse. 

Ci sono diverse tecniche che possono essere utilizzate per far fronte al carico, come l'aggiunta di più server o l'utilizzo di una tecnologia di caching.

