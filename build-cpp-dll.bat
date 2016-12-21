@echo off
rem --------------------------
rem Compiler flags used below
rem /Od: disable optimisation
rem /Zi: generate complete debugging information
rem /EH: enable exception handling
rem /I: add include paths
rem /D: add compiler #define
rem /LD: output as dll
rem --------------------------
set VS=%VS140COMNTOOLS%..\..
call "%VS%\VC\vcvarsall.bat" x86
set commonCompilerflags=/Od /Zi /EHsc /Fo.\output\ /Fd.\output\ /Fa.\output\
set staticCompilerFlags=/I ..\core\cpp.build\include /I "%HXCPP%\include" /D HX_WINDOWS /D BLINX_EXPORTS /LD
set staticRequiredlibs="%HXCPP%\lib\Windows\*-19.lib" user32.lib
cd cpp-dll
del output\* /q
call "%VS%\VC\bin\cl.exe" %commonCompilerflags% %staticCompilerFlags% blinx-cpp-dll.cpp "..\core\cpp.build\libBlinx.lib" %staticRequiredlibs% /link /OUT:output/blinx-cpp-dll.dll
move blinx-cpp-dll.exp output/
move blinx-cpp-dll.lib output/
call "%VS%\VC\bin\cl.exe" %commonCompilerflags% blinx-com-dll.cpp ./output/blinx-cpp-dll.lib /link /OUT:output/blinx-com-dll.exe
cd ..
IF "%1"=="" set /p DUMMY=Hit ENTER to continue...
