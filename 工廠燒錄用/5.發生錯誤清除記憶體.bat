@echo on
echo start to burn bootloader
echo Step1.erase all flash

nrfjprog --eraseall

@echo off
IF %ERRORLEVEL% EQU 0 (
   echo -------------------------------Succeed--------------------------------------- 
) else (
   echo -------------------------------Failed---------------------------------------
   echo ERRORLEVEL=%ERRORLEVEL%
)

echo.
echo if got an error, please refer to the nRF_Command_Line_Tools_v1.4.pdf chapter 4.2 nrfjprog return codes
echo.
echo anykey to close the window.
pause
exit


