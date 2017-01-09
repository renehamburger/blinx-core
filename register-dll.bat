call "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat" x64
regasm D:\Documents\Misc\Programming\haxe\blinx-core\dll\output\Blinx.dll /codebase /tlb
rem %Windir%\Microsoft.NET\Framework64\v4.0.30319\regasm D:\Documents\Misc\Programming\haxe\blinx-core\cpp-dll\output\BlinxCom.dll /codebase /tlb
IF "%1"=="" set /p DUMMY=Hit ENTER to continue...
