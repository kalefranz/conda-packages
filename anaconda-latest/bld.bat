rem copy %FILES_DIR%\EULA-Anaconda.txt %SRC_DIR%\
rem if errorlevel 1 exit 1

rd /s /q %STDLIB_DIR%
mkdir %STDLIB_DIR%

IF NOT EXIST %MENU_DIR% mkdir %MENU_DIR%
copy %SRC_DIR%\menu-windows.json %MENU_DIR%\anaconda_web.json
if errorlevel 1 exit 1
copy %SRC_DIR%\anaconda.ico %MENU_DIR%\
if errorlevel 1 exit 1

@echo off
echo Anaconda %PKG_VERSION% (%ARCH%-bit)> %STDLIB_DIR%\version.txt
if errorlevel 1 exit 1
