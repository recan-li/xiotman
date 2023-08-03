
@echo off

SET BoardCfgFile=board_cfg.h
SET SourceFile=ra_bak\%BoardCfgFile%
SET DstFile=ra_cfg\fsp_cfg\bsp\%BoardCfgFile%

if exist %SourceFile% (
	if not exist %DstFile% (
		echo f | xcopy %SourceFile% %DstFile% /i /y
	) else (
        echo %DstFile% is exist!
    )
) else (
	echo %SourceFile% is not exist!
)

