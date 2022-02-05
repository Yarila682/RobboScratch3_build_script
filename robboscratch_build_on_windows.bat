::"-all"" option compiles blocks, i10n, dca, vm, and gui.
::default compiles only dca and gui.

@echo off

setlocal
::check installed commands

ECHO.
where npm
IF %ERRORLEVEL% NEQ 0 ECHO npm находится
where node
IF %ERRORLEVEL% NEQ 0 ECHO node находится
where git
IF %ERRORLEVEL% NEQ 0 ECHO git находится

::check directories and check npm directory

set "node_mod=node_modules"
set "check=robboscratch3_I10n"
call:check_dir
call:check_npm
set "check=Robboscratch3_DeviceControlAPI"
call:check_dir
call:check_npm
set "check=robboscratch3_vm"
call:check_dir
call:check_npm
set "check=robboscratch3_blocks"
call:check_dir
call:check_npm
set "check=robboscratch3_gui"
call:check_dir
call:check_npm

ECHO.


if "%1"=="" (
  goto:eof
)
if /i "%1"=="-a" (
echo "FIND A OPTION"
goto a
)
if "%1"=="-b" (
echo "FIND B OPTION"
goto b
)
if "%1"=="-d" (
echo "FIND D OPTION"
goto d
)
if "%1"=="-i" (
echo "FIND I OPTION"
goto i
)
if "%1"=="-g" (
echo "FIND G OPTION"
goto g
)
if "%1"=="-s" (
echo "FIND S OPTION"
goto s
)
if "%1"=="-v" (
echo "FIND V OPTION"
goto v
)
if "%1"=="-h" (
echo "FIND HELP OPTION"
goto h
)
:a
cd robboscratch3_blocks
call npm run prepublish
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-blocks\build
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-blocks\build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-blocks\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\scratch-blocks\dist
cd robboscratch3_I10n
call npm run build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-l10n\src
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-l10n\src
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-l10n\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\scratch-l10n\dist
cd ..\
cd Robboscratch3_DeviceControlAPI
call npm run build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\node_modules\Robboscratch3_DeviceControlAPI\src
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-vm\node_modules\Robboscratch3_DeviceControlAPI\src
rmdir /s /q ..\robboscratch3_gui\node_modules\Robboscratch3_DeviceControlAPI\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\Robboscratch3_DeviceControlAPI\dist 
cd ..\
cd robboscratch3_vm
call npm run build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\src
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-vm\src
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\scratch-vm\dist
cd ..\
cd robboscratch3_gui
call npm run build
rmdir /s /q ..\nwjs-binary\package.nw\build
xcopy /i /e build ..\nwjs-binary\package.nw\build
cd ..\nwjs-binary\package.nw\build
goto:post_inst



goto:post_inst
:b
cd robboscratch3_blocks
call npm run prepublish
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-blocks\build
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-blocks\build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-blocks\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\scratch-blocks\dist
cd ..\
cd robboscratch3_gui
call npm run build
rmdir /s /q ..\nwjs-binary\package.nw\build
xcopy /i /e build ..\nwjs-binary\package.nw\build
cd ..\nwjs-binary\package.nw\build
goto:post_inst
:i
cd robboscratch3_I10n
call npm run build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-l10n\src
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-l10n\src
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-l10n\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\scratch-l10n\dist
cd ..\
cd robboscratch3_gui
call npm run build
rmdir /s /q ..\nwjs-binary\package.nw\build
xcopy /i /e build ..\nwjs-binary\package.nw\build
cd ..\nwjs-binary\package.nw\build
goto:post_inst
:g
cd robboscratch3_gui
call npm run build
rmdir /s /q ..\nwjs-binary\package.nw\build
xcopy /i /e build ..\nwjs-binary\package.nw\build
cd ..\nwjs-binary\package.nw\build
goto:post_inst
:v
cd robboscratch3_vm
call npm run build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\src
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-vm\src
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\scratch-vm\dist
cd ..\
cd robboscratch3_gui
call npm run build
rmdir /s /q ..\nwjs-binary\package.nw\build
xcopy /i /e build ..\nwjs-binary\package.nw\build
cd ..\nwjs-binary\package.nw\build
goto:post_inst
:d
cd Robboscratch3_DeviceControlAPI
call npm run build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\node_modules\Robboscratch3_DeviceControlAPI\src
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-vm\node_modules\Robboscratch3_DeviceControlAPI\src
rmdir /s /q ..\robboscratch3_gui\node_modules\Robboscratch3_DeviceControlAPI\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\Robboscratch3_DeviceControlAPI\dist 
cd ..\
cd robboscratch3_vm
call npm run build
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\src
xcopy /i /e src ..\robboscratch3_gui\node_modules\scratch-vm\src
rmdir /s /q ..\robboscratch3_gui\node_modules\scratch-vm\dist
xcopy /i /e dist ..\robboscratch3_gui\node_modules\scratch-vm\dist
cd ..\
cd robboscratch3_gui
call npm run build
rmdir /s /q ..\nwjs-binary\package.nw\build
xcopy /i /e build ..\nwjs-binary\package.nw\build
cd ..\nwjs-binary\package.nw\build
goto post_inst
:s
echo "Find S option"
cd robboscratch3_gui
npm run start
goto end
:h
echo "Options list:"
echo "-a: compile i10n + blocks + dca + vm + gui"
echo "-b: compile blocks + gui"
echo "-d: compile dca + vm + gui"
echo "-g: compile gui"
echo "-h: help, I think you've just understand"
echo "-i: compile i10n + gui"
echo "-n: TODO ./nw start"
echo "-s: npm run start command"
echo "-v: compile vm + gui"
goto end
::check_npm function
:check_npm
cd %check%
IF EXIST %node_mod% (
  echo %check% %node_mod% "exist"
) ELSE (
  call npm install
)
cd ..\
goto:eof

::check_dir function
:check_dir
IF EXIST %check% (
  echo %check% "exist"
) ELSE (
  call git clone https://github.com/Yarila682/%check%
)
goto:eof


:post_inst
::(echo const bluetooth = require^('node-bluetooth'^);) > append.txt
(echo const _serialport = require^('serialport'^);) >> append.txt
(echo node_fs = require^('fs'^);) >> append.txt
(echo const node_process = require^('process'^);) >> append.txt
(echo const node_os = require^('os'^);) >> append.txt
(echo const getos = require^('getos'^);) >> append.txt
type lib.min.js >> append.txt
move /y append.txt lib.min.js
cd robboscratch3_gui
npm run start
:end