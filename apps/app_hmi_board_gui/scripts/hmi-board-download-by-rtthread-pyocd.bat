set hex_file="D:\llc\git_repos\xiotman\out\app_hmi_board_gui(ra6m3-hmi)\rtthread.hex"

cd /d C:\RT-ThreadStudio\repo\Extract\Debugger_Support_Packages\RealThread\PyOCD\0.2.0 
pyocd.exe flash --target=R7FA6M3AH --erase=auto --frequency=1000000 %hex_file%