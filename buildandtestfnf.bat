@echo off
title runner and builder
lime build windows
color 03
cd export
cd release
cd windows
cd bin
PsychEngine.exe
echo application exit
pause
esit