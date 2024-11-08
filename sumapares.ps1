# Script que suma numeros pares

$numero = Read-Host -Prompt "Introduce el número por teclado"
$numero = [int]::Parse($numero)

if ($numero -ge 2) {
    $suma=0
    for ($i=2;$i -le $numero;$i += 2) {
        $suma = $suma + $i
    }
}
Write-Host "La suma de los números pares hasta $numero es $suma"

