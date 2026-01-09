@echo off
setlocal

REM ============================================
REM Build only – no configuration, no paths
REM ============================================

REM Build Wireshark (RelWithDebInfo)
msbuild /m /p:Configuration=RelWithDebInfo Wireshark.sln

REM Optional: NSIS installer
msbuild /m /p:Configuration=RelWithDebInfo wireshark_nsis_prep.vcxproj
msbuild /m /p:Configuration=RelWithDebInfo wireshark_nsis.vcxproj
