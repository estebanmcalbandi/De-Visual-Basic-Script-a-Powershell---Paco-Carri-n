$Etiqueta1.width=25
$Etiqueta1.height=10
$Etiqueta1.BackColor=[System.Drawing.Color]::FromArgb(255,255,235,205)
$Etiqueta1.location=New-Object System.Drawing.Point(238,20)
$Etiqueta1.TextAlign = 2
$Formulario1.controls.AddRange(@($NumeroNif,$Etiqueta1))
#············································································
#Esteeventodelcampodetextoseejecutasiemprequecambiesucontenido.
#············································································
$NumeroNif.Add_TextChanged({
    #Seeliminantodosloscaracteresquenonoesténpermitidos.
    $CadenaCorrecta = ""
    Write-Host "Longitud: $($NumeroNif.TextLength)"
    for ($PosicionLetra= 0;$PosicionLetra-lt$($NumeroNif.TextLength);$PosicionLetra++){
        Write-Host$NumeroNif.Text.Substring($PosicionLetra,1)
        if($TelasSoloNumeros-contains$($NumeroNif.Text.Substring($PosicionLetra,1))){
            $CadenaCorrecta+=$NumeroNif.Text.Substring($PosicionLetra,1)
        }
    }
    
    Write-Host$CadenaCorrecta
    #ImpidequeseconsiderennúmerosdeNIFconmasde8digitos
    if($CadenaCorrecta.Length-gt8){$CadenaCorrecta=$CadenaCorrecta.Substring(0,8)}
    #Nosaseguramosqueelcursorquedeenmismolugarenqueestabaalmodificar.
    $PosicionCursor=$NumeroNif.SelectionStart
    $NumeroNif.Text=$CadenaCorrecta
    $NumeroNif.SelectionStart=$PosicionCursor
    
    #CalculalaletradelNIF.Encasodeerrormuestralacadena"Err"
    try{
        if($($NumeroNif.Text).Length-gt0){
            $Etiqueta1.Text=$LetraNIF[[INT]$NumeroNif.Text%23]
        }else{
            $Etiqueta1.Text=""
        }
    }#endtry
    catch{$Etiqueta1.Text="Err"}
})