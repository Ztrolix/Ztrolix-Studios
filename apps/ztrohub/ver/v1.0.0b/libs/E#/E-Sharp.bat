@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=D:\Ztrolix\E#\E-Sharp.exe
REM BFCPEICON=D:\Ztrolix\E#\icon2.ico
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.1.0.0
REM BFCPEVERPRODUCT=E-Sharp
REM BFCPEVERDESC=E-Sharp
REM BFCPEVERCOMPANY=Ztrolix
REM BFCPEVERCOPYRIGHT=MIT Licence
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=30
REM BFCPEWINDOWWIDTH=60
REM BFCPEWTITLE=E-Sharp
REM BFCPEOPTIONEND
@echo off
title E-Sharp
cls

@echo E-Sharp 1.1.0
@echo Type "help" for more information.
@set id=

:start
@set /p id=: 
@echo %id%
if %id%==ins goto check_Permissions
if %id%==run goto run
if %id%==dl goto download_0
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
@set /p ins=Install: 
@echo %ins%
if %ins% == z-sharp (
    @echo Success!
    @echo Installing Now...
    goto install_z#
) else (
    if %ins% == bat-to-exe (
        @echo Success!
        @echo Installing Now...
        goto install_bte
    ) else (
      if %ins% == ztrolixlib (
        @echo Success!
        @echo Installing Now...
        goto install_ztrolixlib
    	) else (
      	@echo Failure: This package doesn't exist.
    	)
    )
)
goto start

:install_z#
start packages\Z#\ZSharp-Setup.exe
goto start

:install_bte
start packages\Bat-To-EXE\advbattoexeconverter.exe
goto start

:install_ztrolixlib
goto download_0

:run
@set /p runtype=Do you want to run a package (y / n) : 
@echo %runtype%
if %runtype% == y (
    goto run_package
) else (
    if %runtype% == n (
        goto run_code
    ) else (
      @echo Failure: This isn't a option.
	goto start
    )
)

:run_code
@set /p run=File Location: 
@echo %run%
@set /p runname=File Name: 
@echo %runname%
bitsadmin.exe /transfer "Compiling" %run% "D:\Ztrolix\E#\compiled\%runname%.zs"
goto start

:run_package
@set /p runpack=Package: 
@echo %runpack%
if %runpack% == z-sharp (
    @echo Success!
    @echo Opening Now...
    start packages\Z#\ZSharp.exe
    goto start
) else (
    if %runpack% == bat-to-exe (
        @echo Failure: This package can't open.
	  goto start
    ) else (
      if %runpack% == ztrolib (
        	@echo Success!
    		@echo Opening Now...
	  	start packages\ZtroLib\ZtrolixLib.bat
		goto start
    	) else (
      	@echo Failure: This package doesn't exist.
		goto start
    	)
    )
)
goto start

:download_0
cls
title E-Sharp - Downloading 0%
@echo Downloading...
@echo [                                                  ]
@PING -n 6 127.0.0.1>nul
goto download_12

:download_12
cls
title E-Sharp - Downloading 12%
@echo Downloading...
@echo [======                                            ]
@PING -n 6 127.0.0.1>nul
goto download_34

:download_34
cls
title E-Sharp - Downloading 34%
@echo Downloading...
@echo [=================                                 ]
@PING -n 6 127.0.0.1>nul
goto download_100

:download_78
cls
title E-Sharp - Downloading 78%
@echo Downloading...
@echo [=======================================           ]
@PING -n 6 127.0.0.1>nul
goto download_78

:download_100
cls
title E-Sharp - Downloading 100%
@echo Downloading...
@echo [==================================================]
@echo Downloaded!
@PING -n 4 127.0.0.1>nul
cls
title E-Sharp
@echo E-Sharp 1.0.0
@echo Type "help" for more information.
@echo : dl
@echo dl
@echo Downloading...
@echo [==================================================]
@echo Downloaded!
goto start