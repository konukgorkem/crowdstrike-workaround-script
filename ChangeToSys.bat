@echo off
setlocal enabledelayedexpansion

set "directory=C:\Windows\System32\drivers\crowdstrike"
set "oldExtension=.backup1"
set "newExtension=.sys"

cd /d "%directory%"
for %%f in (*%oldExtension%) do (
    if "%%~xf" == "%oldExtension%" (
        set "filePath=%%f"
        set "newFilePath=%%~nf%newExtension%"
        ren "!filePath!" "!newFilePath!"
        echo Renamed !filePath! to !newFilePath!
    )
)

endlocal
pause
