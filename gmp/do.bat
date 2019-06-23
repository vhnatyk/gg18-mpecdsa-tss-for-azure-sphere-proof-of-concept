cmd /c for %A in ("c:/program files (x86)/microsoft azure sphere sdk") do @echo %~sA
REM cd c:/program files (x86)/microsoft azure sphere sdk
@ECHO OFF
if '%1'=='' (%0 .) else echo %~s1

timeout 30