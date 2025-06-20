@echo off
setlocal enabledelayedexpansion

:: Set input and output directories
set INPUT_DIR=%cd%
set OUTPUT_DIR=%cd%\webp-output

:: Create output folder if not exists
if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
)

:: Convert all JPG and PNG files
for %%f in (*.jpg *.jpeg *.png) do (
    echo Converting: %%f
    cwebp -q 80 "%%f" -o "%OUTPUT_DIR%\%%~nf.webp"
)

echo.
echo ✅ Conversion complete! WebP files saved in: %OUTPUT_DIR%
pause
