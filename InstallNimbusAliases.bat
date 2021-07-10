:: This installation batch file does three things:
:: 1. Copy the doskey.bat file into the docker directory
:: 2. Copy the Microsoft profile into the PowerShell Directory
:: 3. Create a registry key for the doskey.bat file
::
:: The result is to add the common Nimbus aliases (dps, dpsa, di, de) to both cmd and PowerShell windows

copy doskey.txt "C:\Program Files\Docker\doskey.bat"
copy Microsoft.PowerShell_profile.ps1 %HOMEDRIVE%%HOMEPATH%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "\"C:\Program Files\Docker\doskey.bat\"
