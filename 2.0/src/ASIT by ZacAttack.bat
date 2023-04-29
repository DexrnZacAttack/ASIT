@echo off



    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 
    ) else (
        echo Failure: Administrator permissions not detected, please run this file as administrator.
pause
exit
    )

:start
cls
echo A System Information Tool by ZacAttack Version 2
timeout /t 3 /nobreak > nul
echo If you want to fully install this program, copy this exe into %userprofile%\ASIT\Windows\System32, rename it to "asit" then when you open an admin command prompt, type asit and it will run this.
timeout /t 5 /nobreak > nul
cls
rem this creates the computer-info directory and some directories inside, then scans for any earlier files from earlier scans and backs them up.
echo Looking for earlier dump files and adding the date to them.
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo Looking for earlier dump files and adding the date to them.
powershell mkdir %userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm')) 
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm')) 
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))

cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
 
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))

cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /-I /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))

cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Information.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\GPU.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\TPM.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\CPU.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Ram.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt /q 
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt /q
cls
echo Looking for earlier dump files and adding the date to them. 
del %userprofile%\ASIT\Computer-Info\Product-Key.txt /q
cls






rem this gets general information like windows version, if the bios is UEFI or legacy.

echo Getting information...
powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Information.txt" < nul
echo OS Architecture is: %os% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Processor Architecture is: %processor_architecture% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Number of processors are: %number_of_processors% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Your user folder is located at: %userprofile% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo You are logged in as %username% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Windows is installed on drive %homedrive% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ASIT\Computer-Info\Information.txt" < nul
cls
type "%userprofile%\ASIT\Computer-Info\Information.txt"
echo.
echo That is some general information about your computer, the area where it says "Bios Firmware Type" if it says legacy, that means your motherboard's bios is set to legacy mode instead of UEFI, this breaks compatibility with Windows 11 and features such as Secure Boot, as Windows 11 and Secure Boot requires UEFI, you can scroll up and down to look at it, once done, press enter
pause
cls





rem this gets information about drive and partitions.

echo Getting drive and partition information...
powershell -command "Get-Volume | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt" 
cls
type %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo.
echo That is information about the drives you have plugged in, their partitions, and how much disk space they have left, you can scroll up and down to look at it, once done, press any key to proceed.
pause
cls





rem this gets information about the plugged in usb devices

echo Getting USB Info...
powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo.
echo That is information about your current plugged in USB Devices, you can scroll up and down, once done, press any key to proceed.
pause
cls












rem this just warns you about sensitive information


:againnnn
echo The next commands will show and dump potentially sensitive information about your computer like serial numbers, the creator is not responsible for any leaked serial numbers, are you sure you want to show and dump this information?
echo.
echo Pressing N will only do the commands that doesn't show and dump the serial numbers.
echo.
echo Waiting 5 seconds to give you time to read what this is saying.
timeout /t 5 > nul
echo.
choice /c yn /m "Show and dump sensitive information like serial numbers?"
if %ERRORLEVEL% EQU 1 goto sensitive
if %ERRORLEVEL% EQU 2 goto lateron
goto :againnnn


rem this is the first part of Lateron, this first set of commands gets the gpu's information, and outputs it into a file, then types that file out.

:lateron
cls
echo Getting GPU information...
powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt"
powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo.
echo That is your GPU and it's information, you can scroll up and down to look at the information, once done, press any key to proceed.
pause
cls





rem cpu information check

echo Getting CPU information...
powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\CPU.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo.
echo That is your CPU and it's information, you can scroll up and down to look at the information, once done, press any key to proceed.
pause
cls






rem ram information check
echo Getting Ram information...
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram.txt" < nul
systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt < nul
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo.
echo That is your Ram and it's information, you can scroll up and down to look at the information, once done, press any key to proceed.
pause
cls






rem pci check
echo Getting information about the PCI slots on the motherboard...
powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo.
echo That is your Motherboard's PCI Slots and its information, you can scroll up and down to look at the information, once done, press any key to proceed.
pause
cls






rem audio information
echo Getting audio device information...
powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
cls
type %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo.
echo These are the sound devices that are installed in your computer, you can scroll up and down to look at the information, once done, press any key to proceed.
pause
cls




rem TPM information
echo Getting TPM Device information...
powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\TPM.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo.
echo This is information about the TPM device installed in your computer, if everything is true, that means TPM is enabled and you might be able to upgrade to Windows 11 if all of the other system requirements are met, you can scroll up and down to look at the information, once done, press any key to proceed.
pause
cls
goto timer



rem this is the end of the script, first it appends the dates to the end of all of the files, then it opens the folder.

:timer
cls
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo All contents have been dumped to %userprofile%\ASIT\Computer-Info\ in 5 seconds the folder will open.
timeout /t 5 /nobreak
start %userprofile%\ASIT\Computer-Info\
exit




rem this gets motherboard and bios information.
:sensitive
cls
echo Getting motherboard and BIOS information...
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
echo.
echo Here is your motherboard's information:
pause
cls

rem this gets ram information including serial numbers.
echo Getting ram serial number, and location information.
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo.
echo This is your Ram's serial number, if it is all 0's then Powershell could not find your Ram's serial number.
pause
cls
goto lateron
























