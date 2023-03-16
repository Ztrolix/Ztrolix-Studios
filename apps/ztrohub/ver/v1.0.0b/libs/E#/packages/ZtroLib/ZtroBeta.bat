@echo off
@echooff
title ZtroBeta Installer
cls
@echo ZtroBeta Installer 0.1.0 Early Access
@echo Downloading...
set /a num=%random% %%100 +1
timeout /t %num%
@echo Installing...
set /a num=%random% %%100 +1
timeout /t %num%
bitsadmin /transfer ZtroBetaScripts /download /priority FOREGROUND "https://ztrolix.w3spaces.com/ztrobeta.txt" "C:\ZtrolixLib\Scripts\ZtroBeta\ztrobeta.bat"
bitsadmin /transfer ZtroBetaService /download /priority FOREGROUND "https://ztrolix.w3spaces.com/ztrobeta.txt" "C:\ZtrolixLib\ztrobeta_service.bat"
timeout /t 1
cmd /k ZtrolixLib.bat