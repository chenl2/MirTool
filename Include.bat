@echo off
setlocal EnableDelayedExpansion

set "target_dir=%~1"
if "%target_dir%"=="" set "target_dir=."

for /r "%target_dir%" %%d in (.) do (
    set "dp=%%~fd"
    dir /b "%%d\*.h" >nul 2>&1 && echo /I !dp!
)

pause
