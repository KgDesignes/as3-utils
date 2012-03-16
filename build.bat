@echo off

if not exist "build-uservars.bat" GOTO BuildInit

echo Loading User Vars

call "build-uservars.bat"

echo User Vars Loaded

ECHO.

:BuildInit

echo Building lib...

compc -include-sources .\net\kgdesignes -output lib\net.kgdesignes.utils.swc

echo Library built to lib\net.kgdesignes.utils.swc

echo.