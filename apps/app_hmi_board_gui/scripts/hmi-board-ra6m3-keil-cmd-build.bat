@echo off
setlocal enabledelayedexpansion

set UV=D:\Keil_v5\UV4\UV4.exe
for /f "delims=" %%i in ('dir /s/b/a-d ^| findstr project.uvprojx') do (
	set UV_PRO_PATH=%%i
	set /a n=n+1
)
	
set UV_PRO_PATH="D:\llc\git_repos\xiotman\mcu\ra6m3-hmi\project.uvprojx"
echo %UV_PRO_PATH%

::if not %n%==1 (
::	goto NO_ONLY
::)

::echo .>build_log.txt

if "%UV_PRO_PATH%" == "" goto NOP
if "%1" == "-b" (
    echo Init building ... 
    %UV% -j0 -sg -b %UV_PRO_PATH% -o %cd%\build_log.txt 
    type build_log.txt
) else if "%1" == "-f" (
    echo Init flashing ...  
    %UV% -j0 -sg -f %UV_PRO_PATH% -o %cd%\build_log.txt 
    type build_log.txt
) else if "%1" == "-r" (
    echo Init building ...  
    %UV% -j0 -sg -r %UV_PRO_PATH% -o %cd%\build_log.txt 
    type build_log.txt
) else (
    echo Init building ... 
	%UV% -j0 -sg -b %UV_PRO_PATH% -o %cd%\build_log.txt
    type build_log.txt
REM    echo Init flashing ... 
REM    %UV% -j0 -sg -f %UV_PRO_PATH% -o %cd%\build_log.txt 
REM    type build_log.txt
)
if "%2" == "-f" (
    echo Init flashing ... 
    %UV% -j0 -sg -f %UV_PRO_PATH% -o %cd%\build_log.txt 
    type build_log.txt
)
echo Done.

set /p value=<%cd%\build_log.txt
echo %value%
cat %cd%\build_log.txt
::del %cd%\build_log.txt
goto end

:NOP
echo No ProjectName
goto end

:NO_ONLY
echo Not the only Project,Please check project number
goto end

:end
::exit
