# SMSP
1) Creare un account DropBox		
2) Creare una nuova cartella in DropBox		
3) Effettuare una copia del file C:\Program Files (x86)\COAA\SondeMonitor\google_sonde.kml nella nuova cartella DropBox		
4) Rinominare a piacere il file appena copiato (io ho usato SondeName.kml)		
5) Creare un file chiamato "smsp.ps1" nella nuova catella DropBox		
6) Copiare, modificando il percorso, le seguenti righe nel file smsp.ps1 e salvare il file		
		
while($true)		
{		
    $i++		
    wget http://127.0.0.1:4190/sm_google.kml -O .\tmp.txt		
    cat .\tmp.txt | Out-File 'C:\Users\username\Dropbox\SharingFoldre\SondeNameTMP.kml'		
    Start-Sleep -s 5		
}		
		
7) Avviare Sondemonitor		
8) Avviare PowerShell come amministratore ed abilitare l'esecuzione di script (cercare su google come si fa), quindi chiudere PowerShell		
9) Avviare normalmente PowerShell e portarsi, con il comando "cd", nella cartella dove risiede il file smsp.ps1 ed avviarlo		
10) Stoppare l'esecuzione dell script premend i tasti CTRL+C e chiudere PowerShell		
11) Aprire la pagina web di DropBox e portarsi nella posiizone del file SondeNameTMP.kml, quindi copiare il link di condivisione		
12) Aprire il file SondeName.kml ed inserire il link di condivisione al posto del link "http://127.0.0.1:4190/sm_google.kml" e salvare il file		
12a) Possiamo anche rinominare il "name point" all'interno del file alla riga "<name>PP1</name>" sostituendo PP1 con il nome della sonda		
13) Aprire la pagina web di DropBox e portarsi nella posiizone del file SondeName.kml, quindi copiare il link di condivisione e condividerlo		
		
Per avviare la condivisione dei dati SondeMonitor bisognerà, una volta avviato SondeMonitor, avviare lo script su PowerShell		
Solo dopo aver avviato lo script, il kml condiviso (SondeName.kml) riceverà i dati generati dal vostro SondeMonitor		
