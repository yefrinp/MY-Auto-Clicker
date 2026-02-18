@echo off
echo.
echo  Building MY-Auto-Clicker.zip...
echo.

if exist MY-Auto-Clicker.zip (
    del MY-Auto-Clicker.zip
    echo  [limpiando zip anterior]
)

powershell -NoProfile -Command ^
  "Compress-Archive -Path manifest.json, background.js, content.js, popup.html, popup.js, logo.png -DestinationPath MY-Auto-Clicker.zip -CompressionLevel Optimal"

if %errorlevel% == 0 (
    echo.
    echo  [OK] MY-Auto-Clicker.zip listo para subir a Chrome.
) else (
    echo.
    echo  [ERROR] Algo salio mal. Verifica que logo.png exista en esta carpeta.
)
echo.
pause
