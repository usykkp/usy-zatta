@@echo off

echo %~dp0

echo �R�s�[��̑Ώۃt�H���_�͈ȉ��ƂȂ�܂��B
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