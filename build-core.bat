@echo off
cd core
haxe cpp.hxml
haxe js.hxml
cd ..
IF "%1"=="" set /p DUMMY=Hit ENTER to continue...
