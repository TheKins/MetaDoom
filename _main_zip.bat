@echo off
color F

set NAME=metadoom_test_%date:~-4,4%%date:~-7,2%%date:~-10,2%
echo ZDoom Mod Builderer
echo Originally by Kyle873 for Laughing Chamber
echo based on 7-Zip, (c) 1999-2010 Igor Pavlov
echo.
echo This will zip up the "metadoom-dev" folder for external use (testers, release etc.)
set /p TYPE="Would you like to build a PK3 or PK7? (default pk3): " % = %

cd metadoom-dev

if (%TYPE%) == (pk7) (goto PK7) else (goto PK3)

:PK7
echo Building PK7
..\tools\7za a -t7z %NAME%.pk7 *.* *
move %NAME%.pk7 ../builds/%NAME%.pk7
goto Done

:PK3
echo Building PK3
..\tools\7za a -tzip %NAME%.pk3 *.* *
move %NAME%.pk3 ../builds/%NAME%.pk3
goto Done

:Done
pause >nul
