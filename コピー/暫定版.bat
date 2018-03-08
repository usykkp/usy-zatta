@@echo off

echo %~dp0

echo コピー先の対象フォルダは以下となります。
for /d %%a in (%~dp0\..\*) do (echo "%%a")
PAUSE

for /d %%a in (%~dp0\..\*) do (call :hoge "%%a")
goto end

:hoge
if 
copy *.xlsx %~1\%C_FILE%
exit /b

:end
pause