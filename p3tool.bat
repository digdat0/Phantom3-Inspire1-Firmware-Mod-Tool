REM First version of a batch file to simplify the P3/I1 FW process
REM Created May 08, 2018 by digdat0
REM I'm not a programmer guys
REM Credits to mefistotelis for the awesome p3 tools
REM Credit to binary, i borrowed some stuff from your apk batch files
REM Credit to czokie for file hosting (check out dank downloader tool)
REM Credit to java dudes, I'll add a GPL or needed to use download.jar
REM Thanks to DJI for pushing content on GitHub
REM
ECHO OFF
CLS
SETLOCAL DisableDelayedExpansion
if not exist tools mkdir tools
java -version >nul 2>&1 && ( GOTO:MENU
 ) || ( call )
javac -version >nul 2>&1 && ( GOTO:MENU
 ) || ( echo.-: Java not installed...
  pause
 exit )
:MENU
CLS
SET APPVER=1.0
SET FWNAME=PMCAPPFw3.bin
SET PARAMFILE=flyc_param_infos
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Select your aircraft
ECHO ---------------------------------------------------------
ECHO.
ECHO  1 - Phantom 3 Professional
ECHO  2 - Phantom 3 Advanced
ECHO  3 - Phantom 3 Standard
ECHO  4 - Phantom 3 4k
ECHO  5 - Phantom 3 SE
ECHO  6 - Inspire 1 v1 (WM610)
ECHO  7 - Inspire 1 Pro (WM610_FC350)
ECHO  8 - Inspire 1 Pro (WM610_FC550)
ECHO.
ECHO  Q - Quit
ECHO.
SET /P M=Chose and press ENTER: 
IF %M%==1 GOTO P3PRO
IF %M%==2 GOTO P3ADV
IF %M%==3 GOTO P3STD
IF %M%==4 GOTO P34K
IF %M%==5 GOTO P3SE
IF %M%==6 GOTO INSPIRE1v1
IF %M%==7 GOTO INSPIRE1350
IF %M%==8 GOTO INSPIRE1550
IF %M%==Q GOTO EOF
IF %M%==q GOTO EOF
GOTO MENU
:P3PRO
CLS
SET AC=Phantom 3 Professional
SET DEBUGNAME=P3X_FW_DEBUG
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Select your %AC% version
ECHO ---------------------------------------------------------
ECHO.
ECHO  1  - Version 1.01.0006
ECHO  2  - Version 1.01.0008
ECHO  3  - Version 1.01.0009
ECHO  4  - Version 1.02.0006
ECHO  5  - Version 1.03.0020
ECHO  6  - Version 1.04.0010
ECHO  7  - Version 1.05.0030
ECHO  8  - Version 1.06.0040
ECHO  9  - Version 1.07.0060
ECHO  10 - Version 1.08.0080
ECHO  11 - Version 1.09.0060
ECHO  12 - Version 1.10.0020
ECHO  13 - Version 1.11.0020
ECHO.
ECHO  M - Main menu
ECHO  Q - Quit
ECHO.
SET /P M=Chose and press ENTER: 
IF %M%==1 GOTO P3PRODL1
IF %M%==2 GOTO P3PRODL2
IF %M%==3 GOTO P3PRODL3
IF %M%==4 GOTO P3PRODL4
IF %M%==5 GOTO P3PRODL5
IF %M%==6 GOTO P3PRODL6
IF %M%==7 GOTO P3PRODL7
IF %M%==8 GOTO P3PRODL7
IF %M%==9 GOTO P3PRODL9
IF %M%==10 GOTO P3PRODL10
IF %M%==11 GOTO P3PRODL11
IF %M%==12 GOTO P3PRODL12
IF %M%==13 GOTO P3PRODL13
IF %M%==Q GOTO EOF
IF %M%==q GOTO EOF
IF %M%==M GOTO MENU
IF %M%==m GOTO MENU
GOTO MENU
:P3PRODL1
SET FILENAME=P3X_FW_V01.01.0006.bin
SET FILENAME2=P3X_FW_V01.01.0006_m0306.bin
SET VERSION=01.01.0006
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.01.0006.bin P3X_FW_V01.01.0006.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL2
SET FILENAME=P3X_FW_V01.01.0008.bin
SET FILENAME2=P3X_FW_V01.01.0008_m0306.bin
SET VERSION=01.01.0008
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.01.0008.bin P3X_FW_V01.01.0008.bin
)
ECHO File Download Finished, lets patch ..
pause
timeout 2 >nul
GOTO FWPATCH
:P3PRODL3
SET FILENAME=P3X_FW_V01.01.0009.bin
SET FILENAME2=P3X_FW_V01.01.0009_m0306.bin
SET VERSIOn=01.01.0009
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.01.0009.bin P3X_FW_V01.01.0009.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL4
SET FILENAME=P3X_FW_V01.02.0006.bin
SET FILENAME2=P3X_FW_V01.02.0006_m0306.bin
SET VERSIOn=01.02.0006
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.02.0006.bin P3X_FW_V01.02.0006.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL5
SET FILENAME=P3X_FW_V01.03.0020.bin
SET FILENAME2=P3X_FW_V01.03.0020_m0306.bin
SET VERSIOn=01.03.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.03.0020.bin P3X_FW_V01.03.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL6
SET FILENAME=P3X_FW_V01.04.0010.bin
SET FILENAME2=P3X_FW_V01.04.0010_m0306.bin
SET VERSIOn=01.04.0010
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.04.0005.bin P3X_FW_V01.04.0010.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL7
SET FILENAME=P3X_FW_V01.05.0030.bin
SET FILENAME2=P3X_FW_V01.05.0030_m0306.bin
SET VERSION=01.05.0030.bin
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.05.0030.bin P3X_FW_V01.05.0030.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL8
SET FILENAME=P3X_FW_V01.06.0040.bin
SET FILENAME2=P3X_FW_V01.06.0040_m0306.bin
SET VERSION=01.06.0040.bin
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.06.0040.bin P3X_FW_V01.06.0040.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL9
SET FILENAME=P3X_FW_V01.07.0060.bin
SET FILENAME2=P3X_FW_V01.07.0060_m0306.bin
SET VERSIOn=01.07.0060
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.07.0060.bin P3X_FW_V01.07.0060.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL10
SET FILENAME=P3X_FW_V01.08.0080.bin
SET FILENAME2=P3X_FW_V01.08.0080_m0306.bin
SET VERSIOn=01.08.0080
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.08.0080.bin P3X_FW_V01.08.0080.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL11
SET FILENAME=P3X_FW_V01.09.0060.bin
SET FILENAME2=P3X_FW_V01.09.0060_m0306.bin
SET VERSIOn=01.09.0060
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.09.0021.bin P3X_FW_V01.09.0060.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL12
SET FILENAME=P3X_FW_V01.10.0020.bin
SET FILENAME2=P3X_FW_V01.10.0020_m0306.bin
SET VERSIOn=01.10.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.10.0090.bin P3X_FW_V01.10.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3PRODL13
SET FILENAME=P3X_FW_V01.11.0020.bin
SET FILENAME2=P3X_FW_V01.11.0020_m0306.bin
SET VERSIOn=01.11.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_PRO/P3X_FW_V01.11.0010.bin P3X_FW_V01.11.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADV
CLS
SET AC=Phantom 3 Advanced
SET DEBUGNAME=P3S_FW_DEBUG
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Select your %AC% firwmare version
ECHO ---------------------------------------------------------
ECHO.
ECHO  1  - Version 1.01.0006
ECHO  2  - Version 1.01.0008
ECHO  3  - Version 1.01.0009
ECHO  4  - Version 1.01.1007
ECHO  5  - Version 1.02.0007
ECHO  6  - Version 1.02.0008
ECHO  7  - Version 1.03.0020
ECHO  8  - Version 1.04.0001
ECHO  9  - Version 1.04.0005
ECHO  10 - Version 1.04.0010
ECHO  11 - Version 1.05.0030
ECHO  12 - Version 1.06.0040
ECHO  13 - Version 1.07.0060
ECHO  14 - Version 1.08.0080
ECHO  15 - Version 1.09.0060
ECHO  16 - Version 1.10.0090
ECHO  17 - Version 1.11.0010
ECHO  18 - Version 1.11.0020
ECHO.
ECHO  M - Main menu
ECHO  Q - Quit
ECHO.
SET /P M=Chose and press ENTER: 
IF %M%==1 GOTO P3ADL1
IF %M%==2 GOTO P3ADL2
IF %M%==3 GOTO P3ADL3
IF %M%==4 GOTO P3ADL4
IF %M%==5 GOTO P3ADL5
IF %M%==6 GOTO P3ADL6
IF %M%==7 GOTO P3ADL7
IF %M%==8 GOTO P3ADL8
IF %M%==9 GOTO P3ADL9
IF %M%==10 GOTO P3ADL10
IF %M%==11 GOTO P3ADL11
IF %M%==12 GOTO P3ADL12
IF %M%==13 GOTO P3ADL13
IF %M%==14 GOTO P3ADL14
IF %M%==15 GOTO P3ADL15
IF %M%==16 GOTO P3ADL16
IF %M%==17 GOTO P3ADL17
IF %M%==18 GOTO P3ADL18
IF %M%==Q GOTO EOF
IF %M%==q GOTO EOF
IF %M%==M GOTO MENU
IF %M%==m GOTO MENU
GOTO MENU
:P3ADL1
SET FILENAME=P3S_FW_V01.01.0006.bin
SET FILENAME2=P3S_FW_V01.01.0006_m0306.bin
SET VERSION=01.01.0006
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.01.0006.bin P3S_FW_V01.01.0006.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL2
SET FILENAME=P3S_FW_V01.01.0008.bin
SET FILENAME2=P3S_FW_V01.01.0008_m0306.bin
SET VERSION=01.01.0008
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.01.0008.bin 	P3S_FW_V01.01.0008.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL3
SET FILENAME=P3S_FW_V01.01.0009.bin
SET FILENAME2=P3S_FW_V01.01.0009_m0306.bin
SET VERSION=01.01.0009
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.01.0009.bin P3S_FW_V01.01.0009.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL4
SET FILENAME=P3S_FW_V01.01.1007.bin
SET FILENAME2=P3S_FW_V01.01.1007_m0306.bin
SET VERSION=01.01.1007
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.01.1007.bin P3S_FW_V01.01.1007.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL5
SET FILENAME=P3S_FW_V01.02.0007.bin
SET FILENAME2=P3S_FW_V01.02.0007_m0306.bin
SET VERSION=01.02.0007
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.02.0007.bin P3S_FW_V01.02.0007.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL6
SET FILENAME=P3S_FW_V01.02.0008.bin
SET FILENAME2=P3S_FW_V01.02.0008_m0306.bin
SET VERSION=01.02.0008
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.02.0008.bin P3S_FW_V01.02.0008.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL7
SET FILENAME=P3S_FW_V01.03.0020.bin
SET FILENAME2=P3S_FW_V01.03.0020_m0306.bin
SET VERSION=01.03.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.03.0020.bin P3S_FW_V01.03.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL8
SET FILENAME=	P3S_FW_V01.04.0001.bin
SET FILENAME2=	P3S_FW_V01.04.0001_m0306.bin
SET VERSION=01.04.0001
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.04.0001.bin P3S_FW_V01.04.0001.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL9
SET FILENAME=P3S_FW_V01.04.0005.bin
SET FILENAME2=P3S_FW_V01.04.0005_m0306.bin
SET VERSION=01.04.0005
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.04.0005.bin P3S_FW_V01.04.0005.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL10
SET FILENAME=P3S_FW_V01.04.0010.bin
SET FILENAME2=P3S_FW_V01.04.0010_m0306.bin
SET VERSION=01.04.0010
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.04.0010.bin P3S_FW_V01.04.0010.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL11
SET FILENAME=P3S_FW_V01.05.0030.bin
SET FILENAME2=P3S_FW_V01.05.0030_m0306.bin
SET VERSION=01.05.0030
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.05.0030.bin P3S_FW_V01.05.0030.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL12
SET FILENAME=P3S_FW_V01.06.0040.bin
SET FILENAME2=P3S_FW_V01.06.0040_m0306.bin
SET VERSION=01.06.0040
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.06.0040.bin P3S_FW_V01.06.0040.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL13
SET FILENAME=P3S_FW_V01.07.0060.bin
SET FILENAME2=P3S_FW_V01.07.0060_m0306.bin
SET VERSION=01.07.0060
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.07.0060.bin P3S_FW_V01.07.0060.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL14
SET FILENAME=P3S_FW_V01.08.0080.bin
SET FILENAME2=P3S_FW_V01.08.0080_m0306.bin
SET VERSION=01.08.0080
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.08.0080.bin P3S_FW_V01.08.0080.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL15
SET FILENAME=P3S_FW_V01.09.0060.bin
SET FILENAME2=P3S_FW_V01.09.0060_m0306.bin
SET VERSION=01.09.0060
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.09.0060.bin P3S_FW_V01.09.0060.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL16
SET FILENAME=P3S_FW_V01.10.0090.bin
SET FILENAME2=P3S_FW_V01.10.0090_m0306.bin
SET VERSION=01.10.0090
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.10.0090.bin P3S_FW_V01.10.0090.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL17
SET FILENAME=P3S_FW_V01.11.0010.bin
SET FILENAME2=P3S_FW_V01.11.0010_m0306.bin
SET VERSION=01.11.0010
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.11.0010.bin P3S_FW_V01.11.0010.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3ADL18
SET FILENAME=P3S_FW_V01.11.0020.bin
SET FILENAME2=P3S_FW_V01.11.0020_m0306.bin
SET VERSION=01.11.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3_ADV/P3S_FW_V01.11.0020.bin P3S_FW_V01.11.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD
CLS
SET AC=Phantom 3 Standard
SET DEBUGNAME=P3C_FW_DEBUG
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Select your %AC% version
ECHO ---------------------------------------------------------
ECHO.
ECHO  1   - Version 1.00.0020
ECHO  2   - Version 1.01.0030
ECHO  3   - Version 1.02.0040
ECHO  4   - Version 1.03.0050
ECHO  6   - Version 1.04.0050
ECHO  7   - Version 1.04.0060
ECHO  8   - Version 1.05.0074
ECHO  9   - Version 1.06.0072
ECHO  10  - Version 1.06.0080
ECHO  11  - Version 1.06.0083
ECHO  12  - Version 1.06.0086
ECHO  13  - Version 1.07.0082
ECHO  14  - Version 1.07.0084
ECHO  15  - Version 1.07.0086
ECHO  16  - Version 1.07.0090
ECHO  17  - Version 1.07.0400
ECHO  18  - Version 1.07.0800
ECHO  19  - Version 1.08.0100
ECHO  20  - Version 1.09.0080
ECHO  21  - Version 1.09.0200
ECHO.
ECHO  M - Main menu
ECHO  Q - Quit
ECHO.
SET /P M=Chose and press ENTER: 
IF %M%==1 GOTO P3STD1
IF %M%==2 GOTO P3STD2
IF %M%==3 GOTO P3STD3
IF %M%==4 GOTO P3STD4
IF %M%==5 GOTO P3STD5
IF %M%==6 GOTO P3STD6
IF %M%==7 GOTO P3STD7
IF %M%==8 GOTO P3STD8
IF %M%==9 GOTO P3STD9
IF %M%==10 GOTO P3STD10
IF %M%==11 GOTO P3STD11
IF %M%==12 GOTO P3STD12
IF %M%==13 GOTO P3STD13
IF %M%==14 GOTO P3STD14
IF %M%==15 GOTO P3STD15
IF %M%==16 GOTO P3STD16
IF %M%==17 GOTO P3STD17
IF %M%==18 GOTO P3STD18
IF %M%==19 GOTO P3STD19
IF %M%==20 GOTO P3STD20
IF %M%==21 GOTO P3STD21
IF %M%==Q GOTO EOF
IF %M%==q GOTO EOF
IF %M%==M GOTO MENU
IF %M%==m GOTO MENU
GOTO MENU
:P3STD1
SET FILENAME=P3C_FW_V01.00.0020.bin
SET FILENAME2=P3C_FW_V01.00.0020_m0306.bin
SET VERSION=01.00.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.00.0020.binP3C_FW_V01.00.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD2
SET FILENAME=P3C_FW_V01.01.0030.bin
SET FILENAME2=P3C_FW_V01.01.0030_m0306.bin
SET VERSION=01.01.0030
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.01.0030.bin P3C_FW_V01.01.0030.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD3
SET FILENAME=P3C_FW_V01.02.0040.bin	
SET FILENAME2=P3C_FW_V01.02.0040_m0306.bin
SET VERSION=01.02.0040
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.02.0040.bin P3C_FW_V01.02.0040.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD4
SET FILENAME=P3C_FW_V01.03.0050.bin	
SET FILENAME2=P3C_FW_V01.03.0050_m0306.bin
SET VERSION=01.03.0050
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.03.0050.bin P3C_FW_V01.03.0050.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD5
SET FILENAME=P3C_FW_V01.04.0050.bin
SET FILENAME2=P3C_FW_V01.04.0050_m0306.bin
SET VERSION=01.04.0050
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.04.0050.bin P3C_FW_V01.04.0050.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD6
SET FILENAME=P3C_FW_V01.04.0060.bin
SET FILENAME2=P3C_FW_V01.04.0060_m0306.bin
SET VERSION=01.04.0060
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.04.0060.bin P3C_FW_V01.04.0060.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD7
SET FILENAME=P3C_FW_V01.05.0074.bin
SET FILENAME2=P3C_FW_V01.05.0074_m0306.bin
SET VERSION=01.05.0074
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.05.0074.bin P3C_FW_V01.05.0074.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD8
SET FILENAME=P3C_FW_V01.06.0072.bin
SET FILENAME2=P3C_FW_V01.06.0072_m0306.bin
SET VERSION=01.06.0072
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.06.0072.bin P3C_FW_V01.06.0072.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD9
SET FILENAME=P3C_FW_V01.06.0080.bin
SET FILENAME2=P3C_FW_V01.06.0080_m0306.bin
SET VERSION=01.06.0080
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.06.0080.bin P3C_FW_V01.06.0080.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD10
SET FILENAME=P3C_FW_V01.06.0083.bin
SET FILENAME2=P3C_FW_V01.06.0083_m0306.bin
SET VERSION=01.06.0083
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.06.0083.bin P3C_FW_V01.06.0083.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD11
SET FILENAME=P3C_FW_V01.06.0086.bin	
SET FILENAME2=P3C_FW_V01.06.0086_m0306.bin
SET VERSION=01.06.0086
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.06.0086.bin P3C_FW_V01.06.0086.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD12
SET FILENAME=P3C_FW_V01.07.0082.bin
SET FILENAME2=P3C_FW_V01.07.0082_m0306.bin
SET VERSION=01.07.0082
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.07.0082.bin P3C_FW_V01.07.0082.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD13
SET FILENAME=P3C_FW_V01.07.0082.bin	
SET FILENAME2=P3C_FW_V01.07.0082_m0306.bin
SET VERSION=01.07.0082
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.07.0082.bin P3C_FW_V01.07.0082.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD14
SET FILENAME=P3C_FW_V01.07.0084.bin
SET FILENAME2=P3C_FW_V01.07.0084_m0306.bin
SET VERSION=01.07.0084
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.07.0084.bin P3C_FW_V01.07.0084.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD15
SET FILENAME=P3C_FW_V01.07.0086.bin
SET FILENAME2=P3C_FW_V01.07.0086_m0306.bin
SET VERSION=01.07.0086
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.07.0086.bin P3C_FW_V01.07.0086.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD16
SET FILENAME=P3C_FW_V01.07.0090.bin
SET FILENAME2=P3C_FW_V01.07.0090_m0306.bin
SET VERSION=01.07.0090
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.07.0090.bin P3C_FW_V01.07.0090.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD17
SET FILENAME=P3C_FW_V01.07.0400.bin	
SET FILENAME2=P3C_FW_V01.07.0400_m0306.bin
SET VERSION=01.07.0400
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.07.0400.bin P3C_FW_V01.07.0400.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD18
SET FILENAME=P3C_FW_V01.07.0800.bin	
SET FILENAME2=P3C_FW_V01.07.0800_m0306.bin
SET VERSION=01.07.0800
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.07.0800.bin P3C_FW_V01.07.0800.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD19
SET FILENAME=P3C_FW_V01.08.0100.bin
SET FILENAME2=P3C_FW_V01.08.0100_m0306.bin
SET VERSION=01.08.0100
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.08.0100.bin P3C_FW_V01.08.0100.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD20
SET FILENAME=P3C_FW_V01.09.0080.bin
SET FILENAME2=P3C_FW_V01.09.0080_m0306.bin
SET VERSION=01.09.0080
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.09.0080.bin P3C_FW_V01.09.0080.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3STD21
SET FILENAME=P3C_FW_V01.09.0200.bin
SET FILENAME2=P3C_FW_V01.09.0200_m0306.bin
SET VERSION=01.09.0200
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3C/P3C_FW_V01.09.0200.bin P3C_FW_V01.09.0200.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34K
CLS
SET AC=Phantom 3 4k
SET DEBUGNAME=P3XW_FW_DEBUG
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Select your %AC% version
ECHO ---------------------------------------------------------
ECHO.
ECHO  1   - Version 1.00.0010
ECHO  2   - Version 1.01.0000
ECHO  3   - Version 1.02.0010
ECHO  4   - Version 1.03.0010
ECHO  5   - Version 1.03.0020
ECHO  6   - Version 1.04.0036
ECHO  7   - Version 1.04.0037
ECHO  8   - Version 1.05.0040
ECHO  9   - Version 1.05.0041
ECHO  10  - Version 1.05.0042
ECHO  11  - Version 1.05.0043
ECHO  12  - Version 1.06.0050
ECHO.
ECHO  M - Main menu
ECHO  Q - Quit
ECHO.
SET /P M=Chose and press ENTER: 
IF %M%==1 GOTO P34K1
IF %M%==2 GOTO P34K2
IF %M%==3 GOTO P34K3
IF %M%==4 GOTO P34K4
IF %M%==5 GOTO P34K5
IF %M%==6 GOTO P34K6
IF %M%==7 GOTO P34K7
IF %M%==8 GOTO P34K8
IF %M%==9 GOTO P34K9
IF %M%==10 GOTO P34K10
IF %M%==11 GOTO P34K11
IF %M%==12 GOTO P34K12
IF %M%==Q GOTO EOF
IF %M%==q GOTO EOF
IF %M%==M GOTO MENU
IF %M%==m GOTO MENU
GOTO MENU
:P34k1
SET FILENAME=P3XW_FW_V01.00.0010.bin
SET FILENAME2=P3XW_FW_V01.00.0010_m0306.bin
SET VERSION=01.00.0010
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.00.0010.bin P3XW_FW_V01.00.0010.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k2
SET FILENAME=P3XW_FW_V01.01.0000.bin
SET FILENAME2=P3XW_FW_V01.01.0000_m0306.bin
SET VERSION=01.01.0000
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.01.0000.bin P3XW_FW_V01.01.0000.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k3
SET FILENAME=P3XW_FW_V01.02.0010.bin
SET FILENAME2=P3XW_FW_V01.02.0010_m0306.bin
SET VERSION=01.02.0010
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.02.0010.bin P3XW_FW_V01.02.0010.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k4
SET FILENAME=P3XW_FW_V01.03.0010.bin	
SET FILENAME2=P3XW_FW_V01.03.0010_m0306.bin
SET VERSION=01.03.0010
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.03.0010.bin P3XW_FW_V01.03.0010.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k5
SET FILENAME=P3XW_FW_V01.03.0020.bin
SET FILENAME2=P3XW_FW_V01.03.0020_m0306.bin
SET VERSION=01.03.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.03.0020.bin P3XW_FW_V01.03.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k6
SET FILENAME=P3XW_FW_V01.04.0036.bin
SET FILENAME2=P3XW_FW_V01.04.0036_m0306.bin
SET VERSION=01.04.0036
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.04.0036.bin P3XW_FW_V01.04.0036.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k7
SET FILENAME=P3XW_FW_V01.04.0037.bin
SET FILENAME2=P3XW_FW_V01.04.0037_m0306.bin
SET VERSION=01.04.0037
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.04.0037.bin P3XW_FW_V01.04.0037.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k8
SET FILENAME=P3XW_FW_V01.05.0040.bin	
SET FILENAME2=P3XW_FW_V01.05.0040_m0306.bin
SET VERSION=01.05.0040
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.05.0040.bin P3XW_FW_V01.05.0040.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k9
SET FILENAME=P3XW_FW_V01.05.0041.bin
SET FILENAME2=P3XW_FW_V01.05.0041_m0306.bin
SET VERSION=01.05.0041
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.05.0041.bin P3XW_FW_V01.05.0041.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k10
SET FILENAME=P3XW_FW_V01.05.0042.bin
SET FILENAME2=P3XW_FW_V01.05.0042_m0306.bin
SET VERSION=01.05.0042
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.05.0042.bin P3XW_FW_V01.05.0042.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k11
SET FILENAME=P3XW_FW_V01.05.0043.bin
SET FILENAME2=P3XW_FW_V01.05.0043_m0306.bin
SET VERSION=01.05.0043
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.05.0043.bin P3XW_FW_V01.05.0043.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P34k12
SET FILENAME=P3XW_FW_V01.06.0050.bin
SET FILENAME2=P3XW_FW_V01.06.0050_m0306.bin
SET VERSION=01.06.0050
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P34K/P3XW_FW_V01.06.0050.bin P3XW_FW_V01.06.0050.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SE
CLS
SET AC=Phantom 3 SE
SET DEBUGNAME=P3SE_FW_DEBUG
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Select your %AC% version
ECHO ---------------------------------------------------------
ECHO.
ECHO  1   - Version 1.00.0001
ECHO  2   - Version 1.00.0020
ECHO  3   - Version 1.00.0049
ECHO  4   - Version 1.00.0050
ECHO  5   - Version 1.00.0052
ECHO  6   - Version 1.00.0054
ECHO  7   - Version 1.01.0000
ECHO  8   - Version 1.01.0001
ECHO  9   - Version 1.01.0002
ECHO  10  - Version 1.02.0010
ECHO  11  - Version 1.02.0011
ECHO  12  - Version 1.02.0012
ECHO  13  - Version 1.02.0013
ECHO  14  - Version 1.02.0014
ECHO  15  - Version 1.02.0019
ECHO  16  - Version 1.02.0020
ECHO  17  - Version 1.02.0023
ECHO  18  - Version 1.03.0020
ECHO.
ECHO  M - Main menu
ECHO  Q - Quit
ECHO.
SET /P M=Chose and press ENTER: 
IF %M%==1 GOTO P3SEDL1
IF %M%==2 GOTO P3SEDL2
IF %M%==3 GOTO P3SEDL3
IF %M%==4 GOTO P3SEDL4
IF %M%==5 GOTO P3SEDL5
IF %M%==6 GOTO P3SEDL6
IF %M%==7 GOTO P3SEDL7
IF %M%==8 GOTO P3SEDL8
IF %M%==9 GOTO P3SEDL9
IF %M%==10 GOTO P3SEDL10
IF %M%==11 GOTO P3SEDL11
IF %M%==12 GOTO P3SEDL12
IF %M%==13 GOTO P3SEDL13
IF %M%==14 GOTO P3SEDL14
IF %M%==15 GOTO P3SEDL15
IF %M%==16 GOTO P3SEDL16
IF %M%==17 GOTO P3SEDL17
IF %M%==18 GOTO P3SEDL18
IF %M%==Q GOTO EOF
IF %M%==q GOTO EOF
IF %M%==M GOTO MENU
IF %M%==m GOTO MENU
GOTO MENU
:P3SEDL1
SET FILENAME=P3SE_FW_V01.00.0001.bin
SET FILENAME2=P3SE_FW_V01.00.0001_m0306.bin
SET VERSION=01.00.0001
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.00.0001.bin P3SE_FW_V01.00.0001.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL2
SET FILENAME=P3SE_FW_V01.00.0020.bin
SET FILENAME2=P3SE_FW_V01.00.0020_m0306.bin
SET VERSION=01.00.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.00.0020.bin P3SE_FW_V01.00.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL3
SET FILENAME=P3SE_FW_V01.00.0049.bin
SET FILENAME2=P3SE_FW_V01.00.0049_m0306.bin
SET VERSION=01.00.0049
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.00.0049.bin P3SE_FW_V01.00.0049.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL4
SET FILENAME=P3SE_FW_V01.00.0050.bin
SET FILENAME2=P3SE_FW_V01.00.0050_m0306.bin
SET VERSION=01.00.0050
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.00.0050.bin P3SE_FW_V01.00.0050.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL5
SET FILENAME=P3SE_FW_V01.00.0052.bin
SET FILENAME2=P3SE_FW_V01.00.0052_m0306.bin
SET VERSION=01.00.0052
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.00.0052.bin P3SE_FW_V01.00.0052.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL6
SET FILENAME=P3SE_FW_V01.00.0054.bin	
SET FILENAME2=P3SE_FW_V01.00.0054_m0306.bin
SET VERSION=01.00.0054
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.00.0054.bin P3SE_FW_V01.00.0054.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL7
SET FILENAME=P3SE_FW_V01.01.0000.bin
SET FILENAME2=P3SE_FW_V01.01.0000_m0306.bin
SET VERSION=01.01.0000
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.01.0000.bin P3SE_FW_V01.01.0000.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL8
SET FILENAME=P3SE_FW_V01.01.0001.bin
SET FILENAME2=P3SE_FW_V01.01.0001_m0306.bin
SET VERSION=01.01.0001
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.01.0001.bin P3SE_FW_V01.01.0001.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL9
SET FILENAME=P3SE_FW_V01.01.0002.bin
SET FILENAME2=P3SE_FW_V01.01.0002_m0306.bin
SET VERSION=01.01.0002
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.01.0002.bin P3SE_FW_V01.01.0002.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL10
SET FILENAME=P3SE_FW_V01.01.0010.bin	
SET FILENAME2=P3SE_FW_V01.01.0010_m0306.bin
SET VERSION=01.01.0010
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.01.0010.bin P3SE_FW_V01.01.0010.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL11
SET FILENAME=P3SE_FW_V01.01.0011.bin
SET FILENAME2=P3SE_FW_V01.01.0011_m0306.bin
SET VERSION=01.01.0011
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.01.0011.bin P3SE_FW_V01.01.0011.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL12
SET FILENAME=P3SE_FW_V01.02.0011.bin
SET FILENAME2=P3SE_FW_V01.02.0011_m0306.bin
SET VERSION=01.02.0011
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.02.0011.bin P3SE_FW_V01.02.0011.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL13
SET FILENAME=P3SE_FW_V01.02.0012.bin	
SET FILENAME2=P3SE_FW_V01.02.0012_m0306.bin
SET VERSION=01.02.0012
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.02.0012.bin P3SE_FW_V01.02.0012.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL14
SET FILENAME=P3SE_FW_V01.02.0013.bin	
SET FILENAME2=P3SE_FW_V01.02.0013_m0306.bin
SET VERSION=01.02.0013
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.02.0013.bin P3SE_FW_V01.02.0013.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL15
SET FILENAME=P3SE_FW_V01.02.0014.bin
SET FILENAME2=P3SE_FW_V01.02.0014_m0306.bin
SET VERSION=01.02.0014
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.02.0014.bin P3SE_FW_V01.02.0014.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL16
SET FILENAME=P3SE_FW_V01.02.0019.bin
SET FILENAME2=P3SE_FW_V01.02.0019_m0306.bin
SET VERSION=01.02.0019
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.02.0019.bin P3SE_FW_V01.02.0019.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL17
SET FILENAME=P3SE_FW_V01.02.0020.bin	
SET FILENAME2=P3SE_FW_V01.02.0020_m0306.bin
SET VERSION=01.02.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.02.0020.bin P3SE_FW_V01.02.0020.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL18
SET FILENAME=P3SE_FW_V01.02.0023.bin
SET FILENAME2=P3SE_FW_V01.02.0023_m0306.bin
SET VERSION=01.02.0023
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.02.0023.bin P3SE_FW_V01.02.0023.bin
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:P3SEDL19
SET FILENAME=P3SE_FW_V01.03.0020.bin	
SET FILENAME2=P3SE_FW_V01.03.0020_m0306.bin
SET VERSION=01.03.0020
IF EXIST "tools\%FILENAME%" (
GOTO FWPATCH 
) ELSE (
ECHO.
ECHO Downloading firmware, please wait .. 
ECHO.
java -jar download.jar http://dji.polybotes.feralhosting.com/DJI-Firmware/Upload/P3SE/P3SE_FW_V01.03.0020.bin P3SE_FW_V01.03.0020.bin	
)
ECHO File Download Finished, lets patch ..
timeout 2 >nul
GOTO FWPATCH
:INSPIRE1v1
GOTO MENU
:INSPIRE1350
GOTO MENU
:INSPIRE1550
GOTO MENU
:FWPATCH
python --version 2>NUL
if errorlevel 1 goto errorNoPython
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
ECHO.
ECHO  1 - Extract the firmware file
ECHO  2 - Extract  flight controller module
ECHO  3 - Edit flight controller parameters
ECHO  4 - Re-compile flight controller and save to tools
ECHO  5 - Rename the new file to service filename 
ECHO  6 - Cleanup/remove all extracted files
ECHO  7 - Make debug file for %AC%
ECHO.
ECHO  M - Main menu
ECHO  Q - Quit
ECHO.
SET /P M=Chose and press ENTER: 
IF %M%==1 GOTO EXTRACTFW
IF %M%==2 GOTO EXTRACTFC
IF %M%==3 GOTO EDIT
IF %M%==4 GOTO COMPILE
IF %M%==5 GOTO RENAMEFW
IF %M%==6 GOTO CLEAN
IF %M%==7 GOTO MAKEDEBUG
IF %M%==Q GOTO EOF
IF %M%==q GOTO EOF
IF %M%==M GOTO MENU
IF %M%==m GOTO MENU
GOTO FWPATCH
:EXTRACTFW
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
IF EXIST "tools\dji_fwcon.py" (
GOTO EXTRACTFW1
) ELSE (
ECHO.
ECHO Downloading Python firmware tool, please wait .. 
ECHO.
java -jar download.jar https://github.com/o-gs/dji-firmware-tools/raw/master/dji_fwcon.py dji_fwcon.py
)
ECHO Downloaded Python FW Extract Tool ..
timeout 2 >nul
GOTO EXTRACTFW1
:EXTRACTFW1
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
ECHO.
ECHO Attempting to extract the file you downloaded
ECHO OFF
CD tools
md fw
copy %FILENAME% fw
copy dji_fwcon.py fw
CD fw
python dji_fwcon.py -vv -x -p %FILENAME%
del dji_fwcon.py
cd ..
cd ..
ECHO File Extracted Successfully
TIMEOUT 2 >nul
GOTO FWPATCH
:EXTRACTFC
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
IF EXIST "tools\fw\%FILENAME2%" (
GOTO EXTRACTFC1
) ELSE (
ECHO.
ECHO Extract the firmware file before the flight controller
ECHO.
TIMEOUT 2 >nul
GOTO FWPATCH
)
:EXTRACTFC1
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
IF EXIST "tools\dji_flyc_param_ed.py" (
GOTO EXTRACTFC2
) ELSE (
ECHO.
ECHO Downloading Python firmware tool, please wait .. 
ECHO.
java -jar download.jar https://github.com/o-gs/dji-firmware-tools/raw/master/dji_flyc_param_ed.py dji_flyc_param_ed.py
)
ECHO Downloaded Python FW Flight Controller Tool ..
timeout 2 >nul
GOTO EXTRACTFC2
:EXTRACTFC2
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
ECHO.
ECHO Attempting to extract the flight controller file 
ECHO OFF
CD tools
copy dji_flyc_param_ed.py fw
CD fw
python dji_flyc_param_ed.py -vv -x -m %FILENAME2%
ECHO OFF
del dji_flyc_param_ed.py
cd ..
cd ..
ECHO File Extracted Successfully
TIMEOUT 2 >nul
GOTO FWPATCH
:COMPILE
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
IF EXIST "tools\fw\%FILENAME2%" (
GOTO COMPILE2
) ELSE (
ECHO.
ECHO Extract and modify the firmware file before compiling
ECHO.
TIMEOUT 2 >nul
GOTO FWPATCH
)
:COMPILE2
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
ECHO.
ECHO Attempting to re-compile flight controller module
ECHO OFF
CD tools
copy dji_flyc_param_ed.py fw
cd fw
python dji_flyc_param_ed.py -vv -u -m %FILENAME2%
copy %FILENAME2% ..
copy %PARAMFILE% ..
cd..
cd..
ECHO Compiled new flight controller module successfully
TIMEOUT 2 >nul
GOTO FWPATCH
:CLEAN
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
ECHO.
ECHO Attempting to cleanup all the extracted files
ECHO OFF
CD tools
cd fw
del *.ini
del *.bin
del *.py
del %PARAMFILE%
cd ..
rd fw
cd ..
SET CLEAN=YES
ECHO.
ECHO Cleanup finished sucessfully ...
TIMEOUT 2 >nul
GOTO FWPATCH
:EDIT
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
IF EXIST "tools\fw\%PARAMFILE%" (
GOTO EDIT1
) ELSE (
ECHO.
ECHO Extract and modify the firmware file before editting
ECHO.
TIMEOUT 2 >nul
GOTO FWPATCH
)
:EDIT1
ECHO OFF
cd tools
cd fw
notepad.exe flyc_param_infos
cd ..
cd..
GOTO FWPATCH
:RENAMEFW
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
IF EXIST "tools\%FWNAME%" (
ECHO.
ECHO There is already a file named PMCAPPFw3.bin cancelling
ECHO.
TIMEOUT 2 >nul
GOTO FWPATCH
)
:RENAMEFW1
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
IF EXIST "tools\%FILENAME2%" (
GOTO RENAMEFW2
) ELSE (
ECHO.
ECHO There is no file to rename, did you re-compile 
ECHO.
TIMEOUT 2 >nul
GOTO FWPATCH
)
:RENAMEFW2
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
ECHO.
ECHO Attempting to rename the fw file to PMCAPPFw3.bin
ECHO OFF
CD tools
ren %FILENAME2% %FWNAME%
cd ..
ECHO File renamed successfully
TIMEOUT 2 >nul
GOTO FWPATCH
:MAKEDEBUG
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
ECHO.
ECHO Attempting to make %AC% debug file
ECHO OFF
CD tools
type NUL > %DEBUGNAME%
ECHO.
echo Debug file created in the tools folder
TIMEOUT 2 >nul
GOTO FWPATCH
:NOPY
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO  Phantom 3 Firmware Mod Tool %APPVER%
ECHO ---------------------------------------------------------
ECHO  Aircraft: %AC%
ECHO  Firmware File: %FILENAME%
ECHO  Firmware Version: %VERSION%
ECHO ---------------------------------------------------------
echo.
echo You don't have Python installed. Goto python.org
TIMEOUT 2 >nul
GOTO MENU
:EOF
EXIT