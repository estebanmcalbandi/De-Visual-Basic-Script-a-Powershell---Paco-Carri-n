# Salir de dos bucles
# Est etiqueta se usa para volver de los dos bucles anidados siguientes
# Devolvemos:
# 1 - Disco no disponible
# 2 - El archivo no existe
# 10 - Otro error
$suma=0
for($i=0;$i -le 10; $i++) {
    if ($i % 2 -eq 0) {
        continue
    }
    $suma += $i
}

Write-Host "$suma"


exit 88
