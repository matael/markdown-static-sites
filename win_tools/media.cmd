REM This file try to implement the "media" target of the unix Makefile

mkdir pages 
mkdir media
xcopy template\*.css pages
xcopy /e media pages\media
