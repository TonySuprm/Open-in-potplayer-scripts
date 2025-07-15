@echo off
REM Helper script to launch PotPlayer with a real URL from potplayer:// protocol
setlocal
set "url=%1"
set "url=%url:potplayer://=%"
start "" "C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe" "%url%" 