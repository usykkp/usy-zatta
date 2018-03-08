@@echo off

echo %~dp0

echo copy directory list
for /d %%a in ("%~dp0\..\*") do (echo "%%a")
PAUSE

for /d %%a in ("%~dp0\..\*") do (call :hoge "%%a")
goto end

:hoge
copy "*.xlsx" "%~1\"
exit /b

:end
pause
