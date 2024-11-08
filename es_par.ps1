# Calculamos si un número es par
# Devuelve 0 si es par, 1 si es impar

$numero = Read-Host -Prompt "Introduce el número por teclado"
$numero = [int]::Parse($numero)
Write-Debug $numero

if ($numero % 2 -eq 0){
    Write-Host "$numero es par."
    exit 0
}
else {
    Write-Host "$numero es impar."
    exit 1
}