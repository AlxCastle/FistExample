<#
.SYNOPSIS
    Menú de tareas de ciberseguridad.

.DESCRIPTION
    Este script presenta un menú con cuatro opciones de tareas de ciberseguridad:
    1. Revisión de hashes de archivos y consulta a la API de VirusTotal.
    2. Listado de archivos ocultos en una carpeta determinada.
    3. Revisión de uso de recursos del sistema (memoria, disco, procesador, red).
    4. Tarea adicional de ciberseguridad.
.EXAMPLE
    ./nombre del archivo.ps1
    Inicia el menú de ciberseguridad con cuatro opciones.
.NOTES
    Asegúrate de tener permisos adecuados para acceder a los archivos y consultar la API de VirusTotal.

Hacer:
Revisión de hashes de archivos y consulta de la API de VirusTotal usando los hashes de los archivos locales 
Agrega código para generar la ayuda que se despliegue con el comando get-help. 
Investiga cómo usar el modo estricto e impleméntalo en tu script y tus módulos. 
#>

do {
    clear
    Write-Host "** MENU **"-ForegroundColor Green
    Write-Host "1. Revisión de hashes de archivos y consulta a la API de VirusTotal"
    Write-Host "2. Listado de archivos ocultos en una carpeta"
    Write-Host "3. Revisión de uso de recursos del sistema"
    Write-Host "4. Tarea adicional de ciberseguridad"
    Write-Host "5. Obtener ayuda"
    Write-Host "6. Salir"

    try {
        $opcion = [int](Read-Host "Seleccione una opción")  
                   
        switch ($opcion) {
            1 {
                Write-Host "Revisión de hashes de archivos y consulta a la API de VirusTotal."
            }
            2 {
                Write-Host "Listado de archivos ocultos en una carpeta."
            }
            3 {
                Write-Host "Revisión de uso de recursos del sistema."
            }
            4 {
                Write-Host "Tarea adicional de ciberseguridad."
            }
            5 {
               $ayuda = Read-Host "Ingresa el término sobre el que deseas obtener ayuda"
               try {
                   Get-Help $ayuda -ErrorAction Stop
               } 
               catch {
                   Write-Host "Actualizando las carpetas de ayuda" 
                   try {
                       Update-Help -ErrorAction Stop
                       Get-Help $ayuda -ErrorAction Stop
                   }
                   catch {
                       Write-Host "Error: $_" -ForegroundColor Red
                   }
 
               }            
            }  
            6 {
                Write-Host "Saliendo..."
                break
            }
            default {
                Write-Host "Opción inválida, seleccione una opción válida." -ForegroundColor Red
            }
        }
    } catch {

        Write-Host "Opción inválida, ingresa un número entero válido." -ForegroundColor Red
    }
    pause
} while ($opcion -ne 6)


function Get-Hash {
      

}

#get-module
function Get-Api {
      $apiKey = "f6e5fe8a34114bb69fdf709bc665d6b8"
      $url = "https://haveibeenpwned.com/api/v3/breachedaccount/$email"
}
