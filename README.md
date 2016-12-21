# blinx-core

The core module of a cross-platform rewrite of [blinx](https://github.com/renehamburger/blinx) in Haxe.

## Setup
- Install [haxe](https://haxe.org/download/)
- Install all required libraries:
```
haxelib install hxcs
haxelib install haxelow
```

## Initial Word add-in build steps
1. Run `build-cs-dll.bat` to compile the Haxe file to a C# dll & copy it into the wrapper
2. Compile the dll wrapper defined in `win-dll-wrapper\Blinx.sln`
3. Run `registerDll.bat` as administrator to register the COM interfaces defined in the dll wrapper
4. Add Blinx as a reference to VBA

