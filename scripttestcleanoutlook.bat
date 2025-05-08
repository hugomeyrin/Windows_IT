@echo off 
@ echo "If you have outlook opened this script will close it, be sure that you have saved your files"
cd %userprofile%\AppData\Local\Microsoft\Windows\INetCache\Content.Outlook
rmdir /s %userprofile%\AppData\Local\Microsoft\Windows\INetCache\Content.Outlook\
TaskKill /im outlook.exe
@echo lets do a cleanup
sfc /scannow
cd %temp%
rmdir /s %temp%\
@echo "Now we go to verify your windows stability installation"
Dism.exe /online /Cleanup-image /ScanHealth
@echo "Correcting windows image"
Dism.exe /online /Cleanup-image /RestoreHealth
@echo "All of your cache was cleaned test made by Vitor"
@echo "let's test this next tool this will allow to check windows drivers signatures"
SIGCHECK
