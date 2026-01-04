@echo off
set PYTHONUTF8=1
chcp 65001

echo === jemdoc 일괄 변환을 시작합니다 ===
echo.

:: 폴더 내의 모든 .jemdoc 파일을 찾아서 하나씩 변환합니다.
for %%f in (*.jemdoc) do (
    echo [변환 중] %%f -> %%~nf.html
    python jemdoc.py -c mysite.conf %%f
)

echo.
echo === 모든 파일이 성공적으로 변환되었습니다! ===
echo 업데이트된 HTML 파일들을 GitHub에 업로드하세요.
echo.
pause