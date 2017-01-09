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
call "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat" x86
set commonCompilerflags=/Od /Zi /Fo.\output\ /Fd.\output\ /Fa.\output\
set staticCompilerFlags=/EHsc /I ..\core\cpp.build\include /I "%HXCPP%\include" /D HX_WINDOWS /D BLINX_EXPORTS /LD
set staticRequiredlibs="%HXCPP%\lib\Windows\*-19.lib" user32.lib
cd dll
del output\* /q
cl %commonCompilerflags% %staticCompilerFlags% blinx-dll.cpp "..\core\cpp.build\libBlinx.lib" %staticRequiredlibs% /link /OUT:output/blinx-dll.dll
move blinx-dll.exp output/
move blinx-dll.lib output/
csc /target:library /out:output/Blinx.dll /debug *.cs 
cd ..
IF "%1"=="" set /p DUMMY=Hit ENTER to continue...
