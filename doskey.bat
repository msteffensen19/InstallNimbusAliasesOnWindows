@echo off
:: To add these aliases (doskeys) , run regedit and add key
:: HKEY_CURRENT_USER\Software\Microsoft\Command Processor
:: Add a new String Value called AutoRun and set the absolute path 
:: in the value of "C:\Program Files\Docker\doskey.bat"   Include the quotes

doskey ls=dir $*
doskey mv=move $*
doskey cp=copy $*
doskey cat=type $*
doskey dps=docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"
doskey dpsa=docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"
doskey di=docker images
doskey de=docker exec -it $1 powershell
