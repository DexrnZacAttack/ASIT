@echo off
title ASIT by ZacAttack
:start
cls
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set thedate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/: " %%a in ('time /t') do (set ttime=%%a-%%b)
cls
echo Please Choose Language. 请选择语言. Elija el idioma. Veuillez choisir la langue. [E/C/S/F]
choice /c ecsf /m "Language"
if %ERRORLEVEL% EQU 1 goto English
if %ERRORLEVEL% EQU 2 goto Chinese
if %ERRORLEVEL% EQU 3 goto Spanish
if %ERRORLEVEL% EQU 4 goto French


:english
title ASIT by ZacAttack

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 
    ) else (
        echo Failure: Administrator permissions not detected, This application needs administrator permissions to get information like the TPM device and other devices on this computer.
pause
exit
    )




cls
echo A System Information Tool by ZacAttack Version 3
timeout /t 3 /nobreak > nul
echo If you want to fully install this program, copy this exe into C:\Windows\System32, rename it to "asit" then when you open an admin command prompt, type asit and it will run this.
timeout /t 5 /nobreak > nul
cls
rem this creates the computer-info directory and some directories inside, then scans for any earlier files from earlier scans and backs them up.
echo Looking for earlier dump files and adding the date to them.
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo Looking for earlier dump files and adding the date to them.
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
 
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Information.txt /q
cls
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Secure-Boot.txt /q
cls
echo Looking for earlier dump files and adding the date to them. 
del %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt /q
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
powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Information.txt" < nul
powershell -command "get-ciminstance Win32_OperatingSystem | Format-Table BuildNumber,Version,SystemDirectory | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Information.txt"
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
echo That is some general information about your computer, the area where it says "Bios Firmware Type" if it says Bios,
echo That means your motherboard's bios is set to legacy mode or Windows was installed using legacy mode instead of UEFI,
echo This breaks compatibility with Windows 11, as Windows 11 requires UEFI.
echo You can scroll up and down to look at the information.
pause
cls
echo Getting Install and Last Boot Date...
powershell -command "(Get-CimInstance Win32_OperatingSystem).InstallDate | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
echo Getting Install and Last Boot Date...
powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | select LastBootUpTime | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
type %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
echo The top date is when Windows was installed, the bottom date is the time when you last turned on your computer.
pause
cls





rem this gets information about drive and partitions.

echo Getting drive and partition information...
powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt" 
cls
type %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo.
echo That is information about the drives you have plugged in, their partitions, and how much disk space they have left, you can scroll up and down to look at the information.
pause
cls





rem this gets information about the plugged in usb devices

echo Getting USB Info...
powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo.
echo That is information about your current plugged in USB Devices, you can scroll up and down to look at the information.
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
powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt"
powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo.
echo That is your GPU and it's information, you can scroll up and down to look at the information.
pause
cls





rem cpu information check

echo Getting CPU information...
powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\CPU.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo.
echo That is your CPU and it's information.
pause
cls






rem ram information check
echo Getting Ram information...
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram.txt" < nul
systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt < nul
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo.
echo That is your Ram and it's information.
pause
cls






rem pci check
echo Getting information about the PCI slots on the motherboard...
powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo.
echo That is your Motherboard's PCI Slots and its information, you can scroll up and down to look at the information.
pause
cls






rem audio information
echo Getting audio device information...
powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
cls
type %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo.
echo These are the sound devices that are installed in your computer, you can scroll up and down to look at the information.
pause
cls




rem TPM information
echo Getting TPM Device information...
powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\TPM.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo.
echo This is information about the TPM device installed in your computer, if everything is true, that means TPM is enabled and you might be able to upgrade to Windows 11 if all of the other system requirements are met.
pause
cls





echo Getting Secure Boot information...
powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo.
echo This is information about Secure Boot, if it says False, than it is not enabled, if it says True, than it is enabled, if it says nothing or shows an error, than Secure Boot may not be supported on your motherboard.
pause
cls

rem this is the end of the script, first it appends the dates to the end of all of the files, then it opens the folder.

:timer
cls
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
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
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo All contents have been dumped to %userprofile%\ASIT\Computer-Info\ in 5 seconds the folder will open.
timeout /t 5 /nobreak
start %userprofile%\ASIT\Computer-Info\
exit




rem this gets motherboard and bios information.
:sensitive
cls
echo Getting motherboard and BIOS information...
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
echo.
echo Here is your motherboard's information.
pause
cls

rem this gets ram information including serial numbers.
echo Getting RAM serial numbers and RAM location information.
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo.
echo This is your Ram's serial number, if it is all 0's then Powershell could not find your Ram's serial number.
pause
cls
goto lateron







:chinese
title 来自 ZacAttack 的 ASIT
net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 
    ) else (
        echo 失败：未检测到管理员权限，此应用程序需要管理员权限才能获取此计算机上的 TPM 设备和其他设备等信息。
pause
exit
    )

cls

echo ZacAttack 版本 3 的系统信息工具
timeout /t 3 /nobreak > nul
echo 我正在使用谷歌翻译将英语翻译成中文（简体）如果某些文本不正确，我很抱歉.
timeout /t 3 /nobreak > nul
echo 如果你想完全安装这个程序，把这个程序复制到C:\Windows\System32, 重命名为“asit”, 然后当你打开管理员命令提示符时，输入asit，它就会运行它.
timeout /t 5 /nobreak > nul
cls
rem this creates the computer-info directory and some directories inside, then scans for any earlier files from earlier scans and backs them up.
echo 查找较早的转储文件并将日期添加到它们。
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
 
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo 查找较早的转储文件并将日期添加到它们。
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Information.txt /q
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Secure-Boot.txt /q
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt /q
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\GPU.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\TPM.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\CPU.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\Ram.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt /q 
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt /q
cls
echo 查找较早的转储文件并将日期添加到它们。
del %userprofile%\ASIT\Computer-Info\Product-Key.txt /q
cls






rem this gets general information like windows version, if the bios is UEFI or legacy.

echo 获取资讯...
powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Information.txt" < nul
powershell -command "get-ciminstance Win32_OperatingSystem | Format-Table BuildNumber,Version,SystemDirectory | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Information.txt"
echo 操作系统架构是： %os% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo 处理器架构是： %processor_architecture% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo 处理器数量为： %number_of_processors% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo 您的用户文件夹位于： %userprofile% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo 您登录为 %username% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Windows 安装在驱动器上 %homedrive% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ASIT\Computer-Info\Information.txt" < nul
cls
type "%userprofile%\ASIT\Computer-Info\Information.txt"
echo.
echo 这是有关您计算机的一些一般信息，如果显示 Bios，则显示“Bios 固件类型”的区域，
echo 这意味着您的主板的 BIOS 设置为传统模式，或者 Windows 是使用传统模式而不是 UEFI 安装的，
echo 这破坏了与 Windows 11 的兼容性，因为 Windows 11 需要 UEFI。
echo 您可以上下滚动查看信息。
pause
cls
echo 正在获取安装和上次启动日期...
powershell -command "(Get-CimInstance Win32_OperatingSystem).InstallDate | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
echo 正在获取安装和上次启动日期...
powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | select LastBootUpTime | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
type %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
echo 最高日期是安装 Windows 的时间，最低日期是您上次打开计算机的时间。
pause
cls





rem this gets information about drive and partitions.

echo 正在获取驱动器和分区信息...
powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt" 
cls
type %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo.
echo 这是有关您插入的驱动器、它们的分区以及它们剩余多少磁盘空间的信息，您可以上下滚动查看这些信息。
pause
cls





rem this gets information about the plugged in usb devices

echo 正在获取 USB 信息...
powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo.
echo 这是有关您当前插入的 USB 设备的信息，您可以上下滚动查看信息。
pause
cls












rem this just warns you about sensitive information


:cagainnnn
echo 下一个命令将显示和转储有关您计算机的潜在敏感信息，例如序列号，创建者不对任何泄露的序列号负责，您确定要显示和转储此信息吗？
echo.
echo 按 N 只会执行不显示和转储序列号的命令。
echo.
echo 等待 5 秒，让您有时间阅读此内容。
timeout /t 5 > nul
echo.
choice /c yn /m "显示和转储敏感信息，如序列号？"
if %ERRORLEVEL% EQU 1 goto csensitive
if %ERRORLEVEL% EQU 2 goto clateron
goto :cagainnnn


rem this is the first part of Lateron, this first set of commands gets the gpu's information, and outputs it into a file, then types that file out.

:clateron
cls
echo 正在获取 GPU 信息...
powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt"
powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo.
echo 那是你的 GPU 和它的信息，你可以上下滚动来查看信息。
pause
cls





rem cpu information check

echo 正在获取 CPU 信息...
powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\CPU.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo.
echo 那是你的 CPU 和它的信息。
pause
cls






rem ram information check
echo 正在获取 Ram 信息...
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram.txt" < nul
systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt < nul
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo.
echo 那是你的 Ram 和它的信息。
pause
cls






rem pci check
echo 正在获取有关主板上 PCI 插槽的信息...
powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo.
echo 那就是你主板的PCI插槽和它的信息，你可以上下滚动查看信息。
pause
cls






rem audio information
echo 正在获取音频设备信息...
powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
cls
type %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo.
echo 这些是安装在您计算机中的声音设备，您可以上下滚动查看信息。
pause
cls




rem TPM information
echo 正在获取 TPM 设备信息...
powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\TPM.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo.
echo 这是有关您计算机中安装的 TPM 设备的信息，如果一切正常，则意味着 TPM 已启用，如果满足所有其他系统要求，您可能能够升级到 Windows 11。
pause
cls





echo 正在获取安全启动信息...
powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo.
echo 这是有关安全启动的信息，如果显示为错误的，则表示未启用，如果显示为真的，则表示已启用，如果未显示或显示错误，则主板可能不支持安全启动。
pause
cls

rem this is the end of the script, first it appends the dates to the end of all of the files, then it opens the folder.

:ctimer
cls
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
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
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo 所有内容已在 5 秒内转储到 %userprofile%\ASIT\Computer-Info\，文件夹将打开。
timeout /t 5 /nobreak
start %userprofile%\ASIT\Computer-Info\
exit




rem this gets motherboard and bios information.
:csensitive
cls
echo 正在获取主板和 BIOS 信息...
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
echo.
echo 这是您的主板信息
pause
cls

rem this gets ram information including serial numbers.
echo 正在获取 RAM 序列号和 RAM 位置信息...
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo.
echo 这是您的 Ram 的序列号，如果全为 0，则 Powershell 找不到您的 Ram 的序列号。
pause
cls
goto clateron









:spanish
chcp 858
title ASIT de ZacAttack
cls
   net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 
    ) else (
        echo Error: no se detectaron permisos de administrador. Esta aplicación necesita permisos de administrador para obtener información como el dispositivo TPM y otros dispositivos en esta computadora.
pause
exit
    )
cls
echo Una herramienta de información del sistema de ZacAttack versión 3
timeout /t 3 /nobreak > nul
echo Estoy usando Google Translate para traducir de inglés a español. Lo siento si algún texto está mal.
timeout /t 3 /nobreak > nul
echo Si desea instalar completamente este programa, copie este exe en C:\Windows\System32, cámbiele el nombre a "asit" y luego, cuando abra un símbolo del sistema de administración, escriba asit y lo ejecutará.
timeout /t 5 /nobreak > nul
cls
rem this creates the computer-info directory and some directories inside, then scans for any earlier files from earlier scans and backs them up.
echo Buscar archivos de volcado anteriores y agregarles la fecha.
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Information.txt /q
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Secure-Boot.txt /q
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt /q
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\GPU.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\TPM.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\CPU.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\Ram.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt /q 
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt /q
cls
echo Buscar archivos de volcado anteriores y agregarles la fecha.
del %userprofile%\ASIT\Computer-Info\Product-Key.txt /q
cls






rem this gets general information like windows version, if the bios is UEFI or legacy.

echo Consiguiendo información...
powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Information.txt" < nul
powershell -command "get-ciminstance Win32_OperatingSystem | Format-Table BuildNumber,Version,SystemDirectory | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Information.txt"
echo La arquitectura del sistema operativo es: %os% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo La arquitectura del procesador es: %processor_architecture% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo número de procesadores son: %number_of_processors% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Su carpeta de usuario se encuentra en: %userprofile% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Has iniciado sesión como %username% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Windows está instalado en la unidad %homedrive% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ASIT\Computer-Info\Information.txt" < nul
cls
type "%userprofile%\ASIT\Computer-Info\Information.txt"
echo.
echo Esa es información general sobre su computadora, el área donde dice "Tipo de firmware de BIOS" si dice Bios,
echo Eso significa que la BIOS de su placa base está configurada en modo heredado o Windows se instaló usando el modo heredado en lugar de UEFI,
echo Esto rompe la compatibilidad con Windows 11, ya que Windows 11 requiere UEFI.
echo Puede desplazarse hacia arriba y hacia abajo para ver la información.
pause
cls
echo Obteniendo instalación y última fecha de inicio...
powershell -command "(Get-CimInstance Win32_OperatingSystem).InstallDate | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
echo Obteniendo instalación y última fecha de inicio...
powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | select LastBootUpTime | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
type %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
echo La fecha superior es cuando se instaló Windows, la fecha inferior es la última vez que encendió su computadora.
pause
cls





rem this gets information about drive and partitions.

echo Obteniendo información sobre la unidad y la partición...
powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt" 
cls
type %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo.
echo Esa es información sobre las unidades que ha conectado, sus particiones y cuánto espacio en disco les queda, puede desplazarse hacia arriba y hacia abajo para ver la información.
pause
cls





rem this gets information about the plugged in usb devices

echo Obteniendo información USB...
powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo.
echo Esa es información sobre sus dispositivos USB conectados actualmente, puede desplazarse hacia arriba y hacia abajo para ver la información.
pause
cls













rem this just warns you about sensitive information


:sagainnnn
echo Los siguientes comandos mostrarán y volcarán información potencialmente confidencial sobre su computadora, como números de serie, el creador no es responsable de los números de serie filtrados, ¿está seguro de que desea mostrar y volcar esta información?
echo.
echo Al presionar N solo se ejecutarán los comandos que no se muestran y se volcarán los números de serie.
echo.
echo Esperando 5 segundos para darle tiempo de leer lo que dice.
timeout /t 5 > nul
echo.
choice /c yn /m "¿Mostrar y volcar información confidencial como números de serie?"
if %ERRORLEVEL% EQU 1 goto ssensitive
if %ERRORLEVEL% EQU 2 goto slateron
goto :sagainnnn


rem this is the first part of Lateron, this first set of commands gets the gpu's information, and outputs it into a file, then types that file out.

:slateron
cls
echo Obteniendo información de la GPU...
powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt"
powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo.
echo Esa es su GPU y su información, puede desplazarse hacia arriba y hacia abajo para ver la información.
pause
cls





rem cpu information check

echo Obteniendo información de la CPU...
powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\CPU.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo.
echo Esa es su CPU y su información.
pause
cls






rem ram information check
echo Obteniendo información de RAM...
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram.txt" < nul
systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt < nul
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo.
echo Esa es tu RAM y su información.
pause
cls






rem pci check
echo Obteniendo información sobre las ranuras PCI en la placa base...
powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo.
echo Esas son las ranuras PCI de su placa base y su información, puede desplazarse hacia arriba y hacia abajo para ver la información.
pause
cls






rem audio information
echo Obteniendo información del dispositivo de audio...
powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
cls
type %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo.
echo Estos son los dispositivos de sonido que están instalados en su computadora, puede desplazarse hacia arriba y hacia abajo para ver la información.
pause
cls




rem TPM information
echo Obteniendo información del dispositivo TPM...
powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\TPM.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo.
echo Esta es información sobre el dispositivo TPM instalado en su computadora, si todo es cierto, eso significa que TPM está habilitado y es posible que pueda actualizar a Windows 11 si se cumplen todos los demás requisitos del sistema.
pause
cls





echo Obteniendo información de arranque seguro...
powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo.
echo Esta es información sobre el Arranque seguro, si dice Falso, entonces no está habilitado, si dice Verdadero, entonces está habilitado, si no dice nada o muestra un error, es posible que el Arranque seguro no sea compatible con su placa base.
pause
cls

rem this is the end of the script, first it appends the dates to the end of all of the files, then it opens the folder.

:stimer
cls
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
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
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo Todo el contenido se ha volcado a %userprofile%\ASIT\Computer-Info\ en 5 segundos se abrirá la carpeta.
timeout /t 5 /nobreak
start %userprofile%\ASIT\Computer-Info\
exit




rem this gets motherboard and bios information.
:ssensitive
cls
echo Obteniendo información de la placa base y del BIOS...
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
echo.
echo Aquí está la información de su placa base.
pause
cls

rem this gets ram information including serial numbers.
echo Obtener el número de serie de la RAM y la información de ubicación de la RAM.
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo.
echo Este es el número de serie de su Ram, si son todos 0, entonces Powershell no pudo encontrar el número de serie de su Ram.
pause
cls
goto slateron


:french
cls
title ASIT Par ZacAttack
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 
    ) else (
        echo Échec : autorisations d'administrateur non détectées, cette application a besoin d'autorisations d'administrateur pour obtenir des informations telles que le périphérique TPM et d'autres périphériques sur cet ordinateur.
pause
exit
    )




cls
echo Un outil d'information système par ZacAttack Version 3
timeout /t 3 /nobreak > nul
echo J'utilise Google Translate pour traduire de l'anglais vers le français. Je suis désolé si des mots ou des phrases sont incorrects.
timeout /t 3 /nobreak > nul
echo Si vous voulez installer complètement ce programme, copiez cet exe dans C:\Windows\System32, renommez-le en "asit" puis lorsque vous ouvrez une invite de commande admin, tapez asit et il l'exécutera.
timeout /t 5 /nobreak > nul
cls
rem this creates the computer-info directory and some directories inside, then scans for any earlier files from earlier scans and backs them up.
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Information.txt /q
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Secure-Boot.txt /q
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt /q
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\GPU.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\TPM.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\CPU.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\Ram.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt /q 
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt /q
cls
echo Recherche de fichiers de vidage antérieurs et ajout de la date.
del %userprofile%\ASIT\Computer-Info\Product-Key.txt /q
cls






rem this gets general information like windows version, if the bios is UEFI or legacy.

echo Obtenir des informations...
powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Information.txt" < nul
powershell -command "get-ciminstance Win32_OperatingSystem | Format-Table BuildNumber,Version,SystemDirectory | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Information.txt"
echo L'architecture du système d'exploitation est: %os% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo L'architecture du processeur est: %processor_architecture% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Le nombre de processeurs est: %number_of_processors% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Votre dossier utilisateur se trouve à: %userprofile% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Vous êtes connecté en tant que %username% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
echo Windows est installé sur le lecteur %homedrive% >> "%userprofile%\ASIT\Computer-Info\Information.txt"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ASIT\Computer-Info\Information.txt" < nul
cls
type "%userprofile%\ASIT\Computer-Info\Information.txt"
echo.
echo Ce sont des informations générales sur votre ordinateur, la zone où il est écrit "Type de micrologiciel du Bios" s'il est écrit Bios,
echo Cela signifie que le bios de votre carte mère est défini sur le mode hérité ou que Windows a été installé en utilisant le mode hérité au lieu de UEFI,
echo Cela rompt la compatibilité avec Windows 11, car Windows 11 nécessite UEFI.
echo Vous pouvez faire défiler vers le haut et vers le bas pour consulter les informations.
pause
cls
echo Obtention de la date d'installation et du dernier démarrage...
powershell -command "(Get-CimInstance Win32_OperatingSystem).InstallDate | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
echo Obtention de la date d'installation et du dernier démarrage...
powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | select LastBootUpTime | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
type %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
echo La date supérieure correspond à la date d'installation de Windows, la date inférieure correspond à l'heure à laquelle vous avez allumé votre ordinateur pour la dernière fois.
pause
cls





rem this gets information about drive and partitions.

echo Obtention d'informations sur le lecteur et la partition...
powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt" 
cls
type %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo.
echo Il s'agit d'informations sur les lecteurs que vous avez branchés, leurs partitions et l'espace disque restant, vous pouvez faire défiler vers le haut et vers le bas pour consulter les informations.
pause
cls





rem this gets information about the plugged in usb devices

echo Obtention des informations USB...
powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo.
echo Il s'agit d'informations sur vos périphériques USB actuellement branchés, vous pouvez faire défiler vers le haut et vers le bas pour consulter les informations.
pause
cls












rem this just warns you about sensitive information


:fagainnnn
echo Les commandes suivantes afficheront et videront des informations potentiellement sensibles sur votre ordinateur comme les numéros de série, le créateur n'est pas responsable des fuites de numéros de série, êtes-vous sûr de vouloir afficher et vider ces informations ?
echo.
echo Appuyer sur N ne fera que les commandes qui ne s'affichent pas et vident les numéros de série.
echo.
echo Attendre 5 secondes pour vous donner le temps de lire ce que cela dit.
timeout /t 5 > nul
echo.
choice /c yn /m "Afficher et vider les informations sensibles telles que les numéros de série ?"
if %ERRORLEVEL% EQU 1 goto fsensitive
if %ERRORLEVEL% EQU 2 goto flateron
goto :fagainnnn


rem this is the first part of Lateron, this first set of commands gets the gpu's information, and outputs it into a file, then types that file out.

:flateron
cls
echo Obtention des informations sur le GPU...
powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt"
powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo.
echo C'est votre GPU et ses informations, vous pouvez faire défiler de haut en bas pour consulter les informations.
pause
cls





rem cpu information check

echo Obtention des informations sur le processeur...
powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\CPU.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo.
echo C'est votre CPU et c'est l'information.
pause
cls






rem ram information check
echo Obtention d'informations sur Ram...
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram.txt" < nul
systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt < nul
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo.
echo C'est votre Ram et c'est l'information.
pause
cls






rem pci check
echo Obtenir des informations sur les slots PCI de la carte mère...
powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo.
echo Il s'agit des emplacements PCI de votre carte mère et de ses informations, vous pouvez faire défiler de haut en bas pour consulter les informations.
pause
cls






rem audio information
echo Obtention d'informations sur le périphérique audio...
powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
cls
type %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo.
echo Ce sont les périphériques audio qui sont installés sur votre ordinateur, vous pouvez faire défiler de haut en bas pour consulter les informations.
pause
cls




rem TPM information
echo Obtention des informations sur le périphérique TPM...
powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\TPM.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo.
echo Il s'agit d'informations sur le périphérique TPM installé sur votre ordinateur, si tout est vrai, cela signifie que TPM est activé et que vous pourrez peut-être effectuer une mise à niveau vers Windows 11 si toutes les autres exigences système sont remplies.
pause
cls





echo Getting Secure Boot information...
powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo.
echo Il s'agit d'informations sur le démarrage sécurisé, s'il indique False, il n'est pas activé ou n'est pas pris en charge sur votre carte mère, s'il indique True, le démarrage sécurisé est activé et fonctionne correctement.
pause
cls

rem this is the end of the script, first it appends the dates to the end of all of the files, then it opens the folder.

:timer
cls
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
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
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo Tout le contenu a été vidé vers %userprofile%\ASIT\Computer-Info\ en 5 secondes, le dossier s'ouvrira.
timeout /t 5 /nobreak
start %userprofile%\ASIT\Computer-Info\
exit




rem this gets motherboard and bios information.
:sensitive
cls
echo Obtention des informations sur la carte mère et le BIOS...
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
cls
type "%userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
echo.
echo Voici les informations de votre carte mère
pause
cls

rem this gets ram information including serial numbers.
echo 
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt"
cls
type %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo.
echo Obtention du numéro de série de la RAM et des informations sur l'emplacement de la RAM.
pause
cls
goto lateron
