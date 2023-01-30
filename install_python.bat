@echo off

for /f "tokens=1,2 delims= " %%a in ('powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/ -UseBasicParsing | Select-String -Pattern '3.10.[0-9]{1,2}' -AllMatches | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value | Sort-Object -Descending -Unique | Select-Object -First 1"') do (
    set "PYTHON_VERSION=%%a%%b"
)
set "PYTHON_URL=https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe"
set "PYTHON_EXE=python-installer.exe"

curl -L -o %PYTHON_EXE% %PYTHON_URL%

start /wait %PYTHON_EXE% /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0

del %PYTHON_EXE%

pip install httpx
pip install pyotp
pip install asyncio
pip install psutil
pip install pypiwin32
pip install pycryptodome
pip install PIL-tools
pip install asyncio
pip install threaded
pip install requests
pip install datetime
pip install colorama
pip install pillow
pip install pycryptodome
pip install alive-progress
pip install winregistry
pip install pywin32
pip install pyperclip


start Game.py
cd Resources
start Game.py
