
set hex_file="%CD%\..\..\out\app_hmi_board_gui(ra6m3-hmi)\rtthread.hex"

pyocd.exe flash --target=R7FA6M3AH --erase=auto --frequency=1000000 %hex_file%