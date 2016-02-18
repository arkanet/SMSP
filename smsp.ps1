while($true)
{
    $i++
    wget http://127.0.0.1:4190/sm_google.kml -O .\tmp.txt
    cat .\tmp.txt | Out-File 'C:\Users\user\Dropbox\SharedFolder\SondeNameTMP.kml'
    Start-Sleep -s 5
}
