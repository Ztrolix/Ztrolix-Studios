@echooff
title JarRunner
cls

@set /p jarfile=Jar: 
@echo %jarfile%

@java -Xmx1024M -Xms1024M -jar %jarfile%.jar

@echo click "enter" to close.
@pause