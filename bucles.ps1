# Enumerar usando distintos tipos de bucle

$numero = Read-Host -Prompt "Introduce el número"
$numero = [int]::Parse($numero)

# Usando For
Write-Host "---Usando For---"

$cadena=""

for ($i=0; $i -lt $numero; $i++) {
    $cadena += "$i, "
    if ($i % 1000 -eq 0){
        $porcentaje = $i/$numero*100

        Write-Progress -activity "Buscando numeros" `
            -Status "Porcentaje completado: $porcentaje" `
            -PercentComplete $porcentaje
    }
}
# Cierro la barra
Write-Progress -Activity ""

Write-host "${cadena}${numero}"
Write-Host "----------------"
Write-Host
