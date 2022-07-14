@Echo Off & Cls
Call :IsAdmin
:: Display the disclaimer screen. 
Mode CON  LINES=18 COLS=100 & Color 0E & Title Created By FREEBOOTER
Set EULA_ACCEPTED=no
SETLOCAL ENABLEDELAYEDEXPANSION              
If /i not %EULA_ACCEPTED%==yes ( 
        Echo.
        Echo.
        Echo.
        Echo.
	Echo  ษออออออออออออออออออออออออออออออ DISCLAIMER ออออออออออออออออออออออออออออออออป
	Echo  บ                                                                          บ
    Echo  บ   By running SysPerf you accept complete responsibility for anything     บ  
	Echo  บ   that happens. Although the chance of something bad happening due to    บ 
	Echo  บ   SysPerf is pretty remote, it's always a possibility, and SysPerf has   บ
	Echo  บ   no WARRANTY for any purpose.                                           บ
	Echo  บ                                                                          บ
	Echo  บ                             RUN IT AT YOUR OWN RISK                      บ                      
	Echo  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
	Echo.
	Echo  If you accept this agreement please type ( YES ^)
        Echo.
	Echo  You can press CTRL^+C keys to cancel.
	Echo.
        Echo.
	:Eula_Prompt
        Echo.
	Set /p CHOICE=^> 
        Echo.
	If /i not "!CHOICE!"=="YES" echo You must type 'YES' to continue && Goto Eula_Prompt
	)
ENDLOCAL DISABLEDELAYEDEXPANSION



Cls & Mode CON  LINES=11 COLS=60 & Color 0D &Title Created By FreeBooter
Echo.
Echo       ษอออออออออออออออออออออออออออออออออออออออออออออป
Echo       บ Apply Windows Performance Tweaks, Press (T) บ  
Echo       ศอออออออออออออออออออออออออออออออออออออออออออออผ
Echo.
Echo.
Echo       ษอออออออออออออออออออออออออออออออออออออออออออออป  
Echo       บ Restore Windows Default Setting, Press (R)  บ  
Echo       ศอออออออออออออออออออออออออออออออออออออออออออออผ  

:: Thanks to 'annikk.exe' for above unicode characters.

Set /p input= RESPONSE: 
If /i  Not %input%==R (Goto :_Ex) Else (Goto :_RegRestore)

:_Ex
If /i Not %input%==T  (Goto :EOF) Else (Goto :_Start)




:_Start
Cls & Mode CON  LINES=6 COLS=48 & Color 0B & Title Created By FreeBooter
Echo.
Echo.
Echo. 
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo. 
Echo.
Echo.
Echo.
Echo        ษออออออออออออออออออออออออออออออออออป  
Echo        บ CONFIGURING PERFORMANCE SETTINGS บ
Echo        ศออออออออออออออออออออออออออออออออออผ
Echo.
If Exist %SystemRoot%\ERDNT Goto :_Go
for /f %%D in ('dir /s /b %tmp%\ERUNT.EXE') do Set A="%%D"
%A%  %SystemRoot%\ERDNT sysreg curuser otherusers  /noconfirmdelete
For /f %%A in ('dir /s /b %tmp%\nircmd.exe') do Copy "%%A" %SystemRoot%\ERDNT /y 2>&1 >Nul
Ping -n 5 localhost >nul

:_Go

Reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects /v VisualFXSetting   /t REG_DWORD /d 3 /f 2>&1 >nul

Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion"  /v ExtendedUIHoverTime /t REG_DWORD  /d 100 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d 150 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop"  /v LowLevelHooksTimeout /t REG_SZ  /d 1000 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop"  /v ForegroundLockTimeout  /t REG_DWORD /d 0 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop"  /v DragFullWindows    /t REG_SZ  /d 0 /f 2>&1 >nul

Reg add  HKLM\SOFTWARE\Microsoft\DWM  /v Animations /t REG_DWORD /d 0 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop"  /v MenuShowDelay /t REG_SZ  /d 0 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f 2>&1 >nul

Reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies /v NoLowDiskSpaceChecks /t REG_DWORD /d 1 /f 2>&1 >nul

Reg add "HKU\S-1-5-19\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d 1 /f 2>&1 >nul

Reg add "HKU\S-1-5-19\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d 1000 /f 2>&1 >nul

Reg add "HKU\S-1-5-19\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f 2>&1 >nul

Reg add "HKU\S-1-5-19\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f 2>&1 >nul

Reg add "HKU\S-1-5-20\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d 1 /f 2>&1 >nul

Reg add "HKU\S-1-5-20\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d 1000 /f 2>&1 >nul

Reg add "HKU\S-1-5-20\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f 2>&1 >nul

Reg add "HKU\S-1-5-20\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d 2000 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop"  /v HungAppTimeout   /t REG_SZ  /d 1000  /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop"  /v WaitToKillAppTimeout  /t REG_SZ  /d 2000  /f 2>&1 >nul

Reg add "HKLM\SYSTEM\ControlSet002\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 1000 /f 2>&1 >nul

Reg add "HKLM\SYSTEM\ControlSet001\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 1000 /f 2>&1 >nul

Reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 1000 /f 2>&1 >nul

Reg add "HKCU\Control Panel\Desktop"  /v AutoEndTasks  /t REG_SZ /d 1  /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoRestartShell  /t REG_DWORD /d 1 /f 2>&1 >nul

Reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v "Max Cached Icons"  /t REG_SZ /d 4096 /f 2>&1 >nul

Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DesktopLivePreviewHoverTime /t REG_DWORD /d 0 /f 2>&1 >nul

Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations  /t REG_DWORD /d 0 /f 2>&1 >nul

Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"  /v ListviewAlphaSelect  /t REG_SZ /d 0 /f 2>&1 >nul

Reg add HKCU\SOFTWARE\Microsoft\Windows\DWM   /v EnableAeroPeek  /t  REG_DWORD  /d 0 /f 2>&1 >nul

Reg add HKCU\SOFTWARE\Microsoft\Windows\DWM   /v AlwaysHibernateThumbnails /t  REG_DWORD  /d 0 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Control\SESSION MANAGER\MEMORY MANAGEMENT" /v Disablepagingexecutive  /t REG_DWORD /d 1 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OptimalLayout"  /v EnableAutoLayout /t REG_DWORD  /d 1 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Control\FileSystem" /v NtfsDisableLastAccessUpdate /t REG_DWORD  /d 1  /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v ShowUI /t REG_DWORD /d 0 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Control\SESSION MANAGER\MEMORY MANAGEMENT" /v IoPageLockLimit /t REG_DWORD /d 134217728 /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug" /v Auto /t REG_DWORD  /d 0 /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v DoReport /t REG_DWORD /d 0 /f 2>&1 >nul

Reg  add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v MaxConnectionsPerServer /t REG_DWORD  /d 0  /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters"  /v Tcp1323Opts   /t REG_DWORD  /d 1  /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters"  /v SackOpts    /t REG_DWORD  /d 1  /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters"  /v TcpMaxDupAcks /t REG_DWORD  /d 2  /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters"  /v  NameSrvQueryTimeout  /t REG_DWORD  /d 3000 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters"  /v TcpMaxDupAcks  /t REG_DWORD /d 2 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters"  /v EnablePMTUDiscovery /t REG_DWORD /d 1 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters"  /v EnablePMTUBHDetect /t REG_DWORD /d 1 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v DefaultTTL /t REG_DWORD /d 64 /f 2>&1 >nul

Reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxFreeTcbs  /t REG_DWORD  /d 65536 /f 2>&1 >nul

Reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxUserPort  /t REG_DWORD /d 65534 /f 2>&1 >nul

Reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v GlobalMaxTcpWindowSize /t REG_DWORD /d  65535 /f 2>&1 >nul

Reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpTimedWaitDelay  /t REG_DWORD /d 30 /f 2>&1 >Nul

Reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v iexplore.exe /t REG_DWORD /d 10 /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v iexplore.exe /t REG_DWORD /d 10 /f 2>&1 >nul

Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPer1_0Server /t REG_DWORD /d 10 /f 2>&1 >nul

Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPerServer /t REG_DWORD /d 10 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v MaxCollectionCount /t REG_DWORD /d 32 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v MaxThreads  /t REG_DWORD /d 30 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v MaxCmds /t REG_DWORD  /d 30 /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Services\WinSock2\Parameters\Protocol_Catalog9" /v Serial_Access_Num /t REG_DWORD /d 9 /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Memory Dump Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Service Pack Cleanup" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\User file versions" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Defender" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Archive Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Queue Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Archive Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Queue Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows ESD installation files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files" /v "StateFlags0064" /t REG_DWORD /d "2" /f 2>&1 >nul

For /f "skip=2 tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher') do set P=%%a 
 
If %P% NEQ 0x0 (
Reg add "HKLM\System\CurrentControlSet\Control\SESSION MANAGER\MEMORY MANAGEMENT\PrefetchParameters"   /v EnablePrefetcher /t REG_DWORD  /d 3  /f 2>&1 >nul

Reg add "HKLM\System\CurrentControlSet\Control\SESSION MANAGER\MEMORY MANAGEMENT\PrefetchParameters"   /v EnableSuperfetch /t REG_DWORD  /d 3  /f 2>&1 >nul
)
 
 
:: Disable and stop Adaptive Brightness service
Sc config SensrSvc start= disabled  2>&1 >nul
Sc stop SensrSvc 2>&1 >nul

:: Disable and stop Computer browser service
Sc config Browser start= disabled  2>&1 >nul 
Sc stop Browser 2>&1 >nul

:: Disable and stop Certificate Propagation service
Sc config CertPropSvc start= disabled  2>&1 >nul
Sc stop CertPropSvc 2>&1 >nul

:: Disable and stop  Distributed Link Tracking Client service
Sc config TrkWks start= disabled  2>&1 >nul
Sc stop TrkWks 2>&1 >nul

:: Manual and stop Encrypting File System service
Sc config EFS start= demand  2>&1 >nul
Sc stop EFS 2>&1 >nul

:: Manual and stop Function Discovery Provider Host service
Sc config fdPHost start= demand  2>&1 >nul
Sc stop fdPHost 2>&1 >nul
 
:: Disable and stop Function Discovery Resource Publication service
Sc config FDResPub start= disabled  2>&1 >nul
Sc stop FDResPub 2>&1 >nul

:: Disable and stop HomeGroup Listener service
Sc config HomeGroupListener start= disabled  2>&1 >nul
Sc stop HomeGroupListener 2>&1 >nul

:: Disable and stop HomeGroup Provider service
Sc config HomeGroupProvider start= disabled 2>&1 >nul  
Sc stop HomeGroupProvider 2>&1 >nul

:: Disable and stop Offline Files service
Sc config CscService start= disabled  2>&1 >nul
Sc stop CscService 2>&1 >nul

:: Manual and stop Parental Controls/Family Safety service
Sc config WPCSvc start= demand  2>&1 >nul
Sc stop WPCSvc 2>&1 >nul

:: Manual and stop Print Spooler service
Sc config Spooler start= demand  2>&1 >nul
Sc stop Spooler 2>&1 >nul

:: Disable and stop Internet Connection Sharing (ICS) service
Sc config SharedAccess start= disabled 2>&1 >nul
Sc stop SharedAccess 2>&1 >nul

:: Disable and stop IP Helper service
Sc config iphlpsvc start= disabled 2>&1 >nul
Sc stop iphlpsvc 2>&1 >nul

:: Disable and stop Microsoft iSCSI Initiator Service
Sc config MSiSCSI start= disabled  2>&1 >nul
Sc stop MSiSCSI 2>&1 >nul

:: Disable and stop Netlogon service
Sc config Netlogon start= disabled   2>&1 >nul
Sc stop Netlogon 2>&1 >nul

:: Manual and stop Remote Desktop Configuration service
Sc config SessionEnv start= demand 2>&1 >nul
Sc stop SessionEnv 2>&1 >nul


:: Manual and stop Remote Desktop Services
Sc config TermService start= demand  2>&1 >nul
Sc stop TermService 2>&1 >nul


:: Disable and stop Remote Registry service
Sc config RemoteRegistry start= disabled  2>&1 >nul
Sc stop RemoteRegistry 2>&1 >nul

:: Manual and stop Routing and Remote Access Service
Sc config RemoteAccess start= demand  2>&1 >nul
Sc stop RemoteAccess 2>&1 >nul

:: Disable and stop Smart Card service
Sc config SCardSvr start= disabled  2>&1 >nul 
Sc stop SCardSvr 2>&1 >nul

:: Disable and stop Server service
Sc config LanmanServer start= disabled 2>&1 >nul
Sc stop LanmanServer  2>&1 >nul

:: Disable and stop Workstation service
Sc config LanmanWorkstation start= disabled 2>&1 >nul
Sc stop LanmanWorkstation 2>&1 >nul

:: Disable and stop Tablet PC Input Service/Touch Keyboard and Handwriting Panel Service 
Sc config TabletInputService start= demand 2>&1 >nul
Sc stop TabletInputService 2>&1 >nul

:: Manual and stop Windows Biometric Service
Sc config WbioSrvc start= demand 2>&1 >nul
Sc stop WbioSrvc 2>&1 >nul

:: Disable and stop Windows Error Reporting Service
Sc config WerSvc start= disabled  2>&1 >nul
Sc stop WerSvc 2>&1 >nul

:: Disable and stop Windows Media Player Network Sharing-service
Sc config WMPNetworkSvc start= disabled  2>&1 >nul
Sc stop WMPNetworkSvc 2>&1 >nul

:: Manual and stop Windows Help service 
Sc config helpsvc start= demand  2>&1 >nul
Sc stop helppsvc 2>&1 >nul


:: Disable and stop SSDP Discovery service
sc config SSDPSRV start= disabled 2>&1 >nul
Sc stop SSDPSRV 2>&1 >nul

Rem Skip disabling Windows Search service if O/S is Windows 10
For /f "tokens=2 delims=[]" %%a in ('ver') do (set Version=%%a)
Set Version=%Version:~8,2% 
If %Version% EQU 10 (Goto :Skip)

:: Disable and stop Windows Search service
Sc config WSearch start= disabled  2>&1 >nul
Sc stop WSearch 2>&1 >nul

:Skip
Rem Enable Compound TCP (CTCP) to CTCP increases the TCP send window more aggressively for broadband connections. 
Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista" >Nul
If Not Errorlevel 1 ( 
Netsh int tcp set global congestionprovider=ctcp 2>&1 >Nul
) Else (
Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7" >Nul
If Not Errorlevel 1 (
Netsh int tcp set global congestionprovider=ctcp 2>&1 >Nul
) Else (
Goto :_Cleanup
)
 )
::    CLEANUP STAGE
:_Cleanup
Cls & Mode CON  LINES=6 COLS=50 & Color 1E & Title Created by FREEBOOTER
Echo.
Echo.
Echo. 
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo. 
Echo.
Echo.
Echo.
Echo           ษออออออออออออออออออออออออออป 
Echo           บ DELETING TEMPORARY FILES บ  
Echo           ศออออออออออออออออออออออออออผ
Echo.

CLEANMGR /sagerun:64 


For /f "tokens=2 delims=[]" %%a in ('ver') do (set Version=%%a)
Set Version=%Version:~8,2% 
If %Version% GEQ 6 (Goto :New_Win) Else (Goto :Old_Win)






:Old_Win
For /D %%a in ("%SystemDrive%\Documents and Settings\*") do (
Del /F /S /Q "%WINDIR%\TEMP\*" 2> Nul 1 >Nul & Cls
Echo            DELETING TEMPORARY FILES 
If exist %SystemDrive%\MSOCache RD/S /Q %SystemDrive%\MSOCache 2> Nul 1 >Nul
For %%i in (NVIDIA,ATI,AMD,Dell,Intel) do (
Rd /S /Q "%SystemDrive%\%%i" 2> Nul 1 >Nul & Cls
Echo            DELETING TEMPORARY FILES 
) )
Cls
    




:: Check which storage device been used and if its SSD will skip defragmentation for the SSD storage device.
SETLOCAL ENABLEDELAYEDEXPANSION
For /f %%f in ('Dir /s /b %tmp%\smartctl.exe') do (
        Set k=%%f


For /f "tokens=1,2,3*" %%i in ('!k! --scan') do (
        @Echo   %%i  %%j %%l | Find /i "SSD" >Nul
         If ERRORLEVEL==1 (Goto HDD) Else (Goto TheEnd) 


For /f "tokens=1,2,3*" %%g in ('!k! --scan') do (
        @Echo   %%g  %%s %%m | Find /i "Solid State" >NUL
	 If ERRORLEVEL==1 (Goto HDD) Else (Goto TheEnd) 

	
For /f "tokens=1,2,3*" %%h in ('!k! --scan') do (
	@Echo   %%h  %%p %%c | Find /i "SandForce" >NUL 
        If ERRORLEVEL==1 (Goto HDD) Else (Goto TheEnd) 




 )
   )
     )
       )
ENDLOCAL DISABLEDELAYEDEXPANSION 2>&1 >Nul
Cls

:HDD

Mode CON  LINES=39 COLS=85 & Color 0E & Title    PLEASE WAIT..
Echo.
Echo INVOKING BOOT OPTIMIZATION ON C: PARTITION...
Echo.
Echo                PLEASE WAIT..
Defrag C: -B -F -V
Ping -n 5 localhost >Nul
Cls
Echo.
Echo.
Echo.
Echo.
Cls
Mode CON  LINES=39 COLS=85 & Color 0D & Title    PLEASE WAIT..
Defrag C: -V -F
Ping -n 5 localhost >Nul
Cls
:: Set virtual memory size to static amount. 
SETLOCAL ENABLEDELAYEDEXPANSION
For /f "tokens=4,5* delims=,. " %%G in ('Systeminfo  ^| Find "Total Physical Memory:"') DO Set RAM=%%G%%H
If "!RAM!"=="" Goto TheEnd
Set /A PageSize=!RAM!*2
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\SESSION MANAGER\MEMORY MANAGEMENT" /v "PagingFiles" /t REG_MULTI_SZ /d "c:\pagefile.sys !PageSize! !PageSize!"  /f
ENDLOCAL DISABLEDELAYEDEXPANSION 2>&1 >Nul
Cls
Goto :TheEnd




:New_Win

Rundll32.exe inetcpl.cpl,ClearMyTracksByProcess 4351

For /D %%b in ("%SystemDrive%\Users\*") do ( 
Del /F /Q /A "%%b\AppData\Roaming\Microsoft\Windows\Recent\*" 2> Nul 1 >Nul
Del /F /S /Q "%WINDIR%\TEMP\*" 2> Nul 1 >Nul
If exist %SystemDrive%\MSOCache RD /S /Q %SystemDrive%\MSOCache 2> Nul 1 >Nul
Del /F /Q /A /S "%LocalAppdata%\Microsoft\Windows\INetCookies\*.*" 2> Nul 1 >Nul
For %%i in (NVIDIA,ATI,AMD,Dell,Intel) do (
Rd /S /Q "%SystemDrive%\%%i" 2> Nul 1 >Nul )
		
)
Cls

Mode CON  LINES=12 COLS=80 & Color 1E & Title Created by FREEBOOTER
Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 8" >Nul
If Not Errorlevel 1 (
Dism /Online /Cleanup-Image /StartComponentCleanup
Ping -n 5 localhost >Nul
) Else (
Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 8.1" >Nul
If Not Errorlevel 1 (
Dism /Online /Cleanup-Image /StartComponentCleanup
Ping -n 5 localhost >Nul
) Else (
Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 10" >Nul
If Not Errorlevel 1 (
Dism /Online /Cleanup-Image /StartComponentCleanup
Ping -n 5 localhost >Nul
) ) )  

Cls
Mode CON  LINES=38 COLS=85 & Color 0E & Title    PLEASE WAIT....
For /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
Echo.
Echo                    EVENT LOGS HAVE BEEN CLEARED!
Ping -n 5 localhost >Nul
Goto NextStage
:do_clear
Echo clearing %1
wevtutil.exe cl %1
Goto :EOF
Cls

:NextStage
:: Check which storage device been used and if its SSD will skip defragmentation for the SSD storage device.
SETLOCAL ENABLEDELAYEDEXPANSION
For /f %%f in ('Dir /s /b %tmp%\smartctl.exe') do (
Set k=%%f


For /f "tokens=1,2,3*" %%i in ('!k! --scan') do (
        @Echo   %%i  %%j %%l | Find /i "SSD" >Nul
        If ERRORLEVEL==1 (Goto _HDD) Else (Goto TheEnd) 


For /f "tokens=1,2,3*" %%g in ('!k! --scan') do (
        @Echo   %%g  %%s %%m | Find /i "Solid State" >NUL
	      If ERRORLEVEL==1 (Goto _HDD) Else (Goto TheEnd) 

	
For /f "tokens=1,2,3*" %%h in ('!k! --scan') do (
	    @Echo   %%h  %%p %%c | Find /i "SandForce" >NUL 
      If ERRORLEVEL==1 (Goto _HDD) Else (Goto TheEnd) 



 )
   )
     )
       )


ENDLOCAL DISABLEDELAYEDEXPANSION 2>&1 >Nul
Cls

:_HDD

Mode CON  LINES=39 COLS=95 & Color 0E & Title    PLEASE WAIT....
Echo.
Defrag C: /X /W /F /H /V 
Ping -n 5 localhost >Nul
Cls
Mode CON  LINES=39 COLS=95 & Color 0D & Title    PLEASE WAIT....
Echo.
Defrag   /W /C /H /V /F
Ping -n 5 localhost >Nul
Cls
Mode CON  LINES=39 COLS=95 & Color 0B & Title    PLEASE WAIT....
Echo.
Defrag C: /B /H /V /W /F
Ping -n 5 localhost >Nul

Cls 
:: Set virtual memory size to static amount. 
SETLOCAL ENABLEDELAYEDEXPANSION
For /f "tokens=4,5* delims=,. " %%G in ('Systeminfo  ^| Find "Total Physical Memory:"') DO Set RAM=%%G%%H
If "!RAM!"=="" Goto TheEnd
Set /A PageSize=!RAM!*2
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\SESSION MANAGER\MEMORY MANAGEMENT" /v "PagingFiles" /t REG_MULTI_SZ /d "c:\pagefile.sys !PageSize! !PageSize!"  /f
ENDLOCAL DISABLEDELAYEDEXPANSION 2>&1 >Nul
Cls

:TheEnd
If Not Exist "%ProgramFiles(x86)%" (
Cls & Mode CON  LINES=11 COLS=51 & Color 0E & Title FreeBooter 
Echo.
Echo.
Echo THIS COMPUTER WILL REBOOT 
Echo.
Echo.
Echo PLEASE SAVE ALL WORK IN PROGRESS
Echo. 
Echo.
Echo PRESS 'ENTER' KEY TO REBOOT ^&^ DEFRAGMENT PAGEFILE
Pause >Nul
SETLOCAL ENABLEDELAYEDEXPANSION
Reg add HKCU\SOFTWARE\Sysinternals\PageDefrag  /v eulaaccepted /t REG_DWORD /d 1 /f 2>&1 >Nul
For /f %%G in ('dir /s /b %tmp%\Pagedfrg.exe') do (
Set B="%%G"
!B! -o  -t 1 2>&1 > Nul
ENDLOCAL DISABLEDELAYEDEXPANSION 2>&1 >Nul
)
Shutdown  -r  -t 0  -c "REBOOTING SYSTEM" 2>&1 > Nul
Cls
) Else (
Cls & Mode CON  LINES=11 COLS=42 & Color 0E & Title FreeBooter 
Echo.
Echo.
Echo    THIS COMPUTER WILL REBOOT 
Echo.
Echo.
Echo    PLEASE SAVE ALL WORK IN PROGRESS
Echo. 
Echo.
Echo    PRESS 'ENTER' KEY TO RESTART COMPUTER
Pause >Nul

Shutdown  -r  -t 0  -c "REBOOTING SYSTEM" 2>&1 > Nul
Cls
Exit
)

:_RegRestore
If Not Exist %SystemRoot%\ERDNT (
Cls & Mode CON  LINES=5 COLS=48 & Color 0C & Title - WARNING - 
 Echo.
 Echo. 
 Echo             - NO RESTORE POINT EXIST -
 Pause >Nul & Exit
)

Cls & Mode CON  LINES=11 COLS=62 & Color 0E & Title Restoring Settings
Echo.
Echo.
Echo       THIS SYSTEM WILL REBOOT 
Echo.
Echo.
Echo       PLEASE SAVE ALL WORK IN PROGRESS
Echo.
Echo. 
Echo       PRESS 'ENTER' KEY TO RESTORE WINDOWS DEFAULT SETTINGS
Pause >Nul
Netsh int tcp set global congestionprovider=none 2>&1 >Nul
CD %SystemRoot%\ERDNT
For /f %%F in ('dir /s /b %tmp%\nircmd.exe') do Set C="%%F"
%C% dlg "" "" click yes  | ERDNT.EXE silent sysreg curuser otherusers /reboot 2>&1 >Nul
Goto :EOF

:IsAdmin
Reg query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Mode CON  LINES=5 COLS=48 & Color 0C & Title - WARNING -
 Echo.
 Echo. 
 Echo  YOU MUST HAVE ADMINISTRATOR RIGHTS TO CONTINUE 
 Pause >Nul & Exit
)
Cls
Goto :EOF


