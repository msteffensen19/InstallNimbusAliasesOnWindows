# This fixes powershell to have aliases

# Powershell profile (.bashrc equiv) is located C:\Users\demo\Documents\WindowsPowerShell
# as file Microsoft.PowerShell_profile.ps1
function dps {docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"}
function dpsa {docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"}
function di {docker images}
function de {docker exec -it $args[0] powershell}
