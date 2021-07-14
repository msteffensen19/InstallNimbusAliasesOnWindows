:: This uninstallation batch file does three things:
:: 1. Deletes the doskey.bat file into the docker directory
:: 2. Deletes the Microsoft profile into the PowerShell Directory
:: 3. Removes the registry key for the doskey.bat file
::
:: The result is to uninstall the common Nimbus aliases (dps, dpsa, di, de) in both cmd and PowerShell windows

del /F "C:\Program Files\Docker\doskey.bat"
del /F %HOMEDRIVE%%HOMEPATH%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "\"C:\Program Files\Docker\doskey.bat\"
