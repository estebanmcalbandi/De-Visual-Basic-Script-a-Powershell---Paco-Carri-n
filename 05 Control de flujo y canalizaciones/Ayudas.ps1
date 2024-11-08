# Imprime a un único archivo de texto todas las ayudas de cmdlets

$archivo = $Temp:ayuda.txt


Get-Help * | 
Where-Object {$_.Category -match "cmdlet"} | 
Sort-Object -Property Name |
ForEach-Object {
    Write-Output $_.Name >>$archivo
    Write-Output "--------------------------" >> $archivo
    Get-Help $_.name -Detailed >> $archivo
    Write-Output "." >> $archivo
    Write-Output "." >> $archivo
}