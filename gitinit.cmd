@ECHO OFF

set check=0
set "link=%~1"
goto :par1Check

:init
set /p link=Nhap link github:

:par1Check
IF "%link%"=="" (
	IF %check% EQU 1 echo link error
	IF %check% EQU 0 set check=1
	goto :init
)
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin %link%
git push -u origin main