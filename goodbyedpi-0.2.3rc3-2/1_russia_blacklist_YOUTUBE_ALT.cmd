@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

start "" goodbyedpi.exe -f 1 -e 1 --set-ttl 4 --reverse-frag --max-payload --fake-with-sni www.google.com --blacklist ..\russia-blacklist.txt --blacklist ..\russia-youtube.txt

POPD
POPD
