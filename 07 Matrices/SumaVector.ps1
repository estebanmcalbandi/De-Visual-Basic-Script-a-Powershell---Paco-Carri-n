# Sumamos dos vectores

# Hacemos que el programa pare en caso de desbordamientos
$ErrorActionPreference = "Stop"

# Los números aleatorios solo pueden llegar al 50% del máximo del tipo Int32
$limite = [Int32]::MaxValue / 2 - 1
$limite = [System.Math]::Truncate($limite)

# Pedimos al usuario el tamaño del vector
$Tamaño=Read-Host -Prompt "Que tamaño tienen que tener los vectores"
$Tamaño=[int]::Parse($Tamaño)

# Generamos los dos vectores al azar
$vector1=New-Object int32[] $Tamaño
$vector2=New-Object int32[] $Tamaño
$vector3=New-Object int32[] $Tamaño


for ($i=0;$i -lt $Tamaño;$i++){
    $vector1[$i] = Get-Random -Maximum $limite
    $vector2[$i] = Get-Random -Maximum $limite

    # Al sumar, no se puede producir un desbordamiento ya que los dos números sumados
    # están limitados al 50% del rango de los enteros
    $vector3[$i] = $($vector1[$i] + $vector2[$i])

    Write-Host "[" $i "] " $vector1[$i] " + " $vector2[$i] " = " + $vector3[$i]
}