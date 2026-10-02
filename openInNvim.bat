@echo off
set "TARGET=%~1"
if "%TARGET%"=="" set "TARGET=%CD%"

if exist "%TARGET%\*" (
    set "FOLDER=%TARGET%"
) else (
    set "FOLDER=%~dp1"
)

cd /d "%FOLDER%"
"C:\tools\neovim\nvim-win64\bin\nvim.exe" .