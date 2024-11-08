$texto = 'El                   perro de Ramón Ramirez no tiene rabo'

# Quito espacios al comienzo y al final
$texto = $texto.Trim()

# Busco el primer espacio
$posicion=$texto.IndexOf(" ")

# Salimos cuando IndexOf devuelve -1 (no encuentro la cadena)
$cadenas=""
while ($posicion -ne -1){
    # Separamos la primera palabra
    $cadenas += $($texto.Substring(0,$posicion))
    $cadenas += "`n"

    # Eliminamos la primera palabra de la cadena
    $texto = $texto.Substring($posicion)
    $texto = $texto.Trim()

    # Busco la siguiente cadena
    $posicion=$texto.IndexOf(" ")
}

# Agregamos la última palabra
$cadenas += $texto

Write-Host $cadenas