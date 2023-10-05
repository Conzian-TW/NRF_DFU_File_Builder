@echo on
echo start to package file

nrfutil pkg generate --hw-version 52 --debug-mode --application-version 1 --application .\ble_app_uart_pca10040_s132.hex --sd-req 0x101 --key-file .\private.key KNEESUP_dfu_package_01.zip

@echo off
IF %ERRORLEVEL% EQU 0 (
   echo -------------------------------Succeed--------------------------------------- 
) else (
   echo -------------------------------Failed---------------------------------------
   echo ERRORLEVEL=%ERRORLEVEL%
)

pause
exit
