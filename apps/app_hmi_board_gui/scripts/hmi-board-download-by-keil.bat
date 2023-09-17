
@echo off

::---------------------- config your own params ------------------------

set src_hex_file="D:\llc\git_repos\xiotman\out\app_hmi_board_gui(ra6m3-hmi)\rtthread.hex"
set target_path="D:\\llc\\git_repos\\xiotman\\mcu\\ra6m3-hmi\\Objects"
set UV="D:\Keil_v5\UV4\UV4.exe"
set UV_PRO_PATH="D:\llc\git_repos\xiotman\mcu\ra6m3-hmi\project.uvprojx"

::----------------------------------------------------------------------

if not exist %target_path% md %target_path%
xcopy %src_hex_file% %target_path%"\\rtthread.hex" /y

set start_time=%time%
::echo %start_time%
set /a second1=%start_time:~-8,2% * 60000 + %start_time:~-5,2%%start_time:~-2%0
::echo %second1%

echo begin to flashing @ %start_time% ...
%UV% -j0 -sg -f %UV_PRO_PATH% -T "Target 1" -o "%cd%\build_log.txt"

set stop_time=%time%
set TotalTime=0
::echo %stop_time%
set /a second2=%stop_time:~-8,2% * 60000 + %stop_time:~-5,2%%stop_time:~-2%0
::echo %second2%

echo flash done @ %stop_time% ...

set /a TotalTime+=%second2%-%second1%
set /a sec=%TotalTime%/1000
echo flash waste time: %TotalTime%ms = %sec%s

del "%cd%\build_log.txt"
