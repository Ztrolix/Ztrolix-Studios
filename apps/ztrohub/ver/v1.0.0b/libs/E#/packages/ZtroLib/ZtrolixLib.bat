@echo off
@echooff
title ZtrolixLib
cls

@echo ZtrolixLib 0.2.0 Early Access
@echo Type "help" for more information.
@set id=

:start
@set /p id=: 
@echo %id%
if %id%==cmdi goto check_Permissions
goto start


:check_Permissions
    @echo Administrative permissions required. Detecting permissions...
    
    @net session >nul 2>&1
    if %errorLevel% == 0 (
        @echo Success: Administrative permissions confirmed.
	  goto install
    ) else (
        @echo Failure: Current permissions inadequate.
        goto start
    )
    
    @pause >nul

:install
@echo What would you like to install? 
@set /p install=Install: 
if %install% == ztrobeta (
	goto ztrobeta_install
) else (
	@echo Failure: This is not a valid package.
	goto start
)

:ztrobeta_install

@echo Installing "ztrobeta" This May Take A While...
cmd /k ZtroBeta.bat
goto start