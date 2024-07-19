@echo off
setlocal enabledelayedexpansion

set "directory=C:\Windows\System32\drivers\crowdstrike"
set "prefix=c-00000291"
set "oldExtension=.sys"
set "newExtension=.backup1"

cd /d "%directory%"
for %%f in (%prefix%*%oldExtension%) do (
    if "%%~xf" == "%oldExtension%" (
        set "filePath=%%f"
        set "newFilePath=%%~nf%newExtension%"
        ren "!filePath!" "!newFilePath!"
        echo Renamed !filePath! to !newFilePath!
    )
)

endlocal
pause
