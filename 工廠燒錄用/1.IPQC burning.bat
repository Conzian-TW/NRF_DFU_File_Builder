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

@echo on
echo Step2. burn softdevice 

nrfjprog -f NRF52 --program s132_nrf52_5.1.0_softdevice.hex  
@echo off
IF %ERRORLEVEL% EQU 0 (
   echo -------------------------------Succeed---------------------------------------
) else (
   echo ------------------------------- Failed---------------------------------------
   echo ERRORLEVEL=%ERRORLEVEL%
)

@echo on
echo Step3. burn IPQC Program 

nrfjprog --reset --program KS01_01_IPQC_V1.0.3.hex --family NRF52 
@echo off
IF %ERRORLEVEL% EQU 0 (
   echo -------------------------------Succeed---------------------------------------
) else (
   echo ------------------------------- Failed---------------------------------------
   echo ERRORLEVEL=%ERRORLEVEL%
)
echo.
echo if all Succeed, using KNEESUP Tester to test and register device.
echo.
echo if got an error, please refer to the nRF_Command_Line_Tools_v1.4.pdf chapter 4.2 nrfjprog return codes
echo.
echo anykey to close the window.
pause
exit


