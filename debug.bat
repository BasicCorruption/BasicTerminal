@echo off
haxe debug.hxml
mkdir export
copy bin\bterm\Main.exe export\BasicTerminal.exe
copy bin\nsh\Main.exe export\Nsh.exe
copy bin\fileexec\Main.exe export\FileExec.exe
echo.
echo.
cd export
BasicTerminal
cd ..