//package blinx;

class Blinx {

  // Entry point
  public static function main() {
    new Blinx();
  }

  public function new() {
    trace(Blinx.getVersion());
    trace(this.getVersionNumber());
    #if js
      untyped __js__("debugger");
    #else
      try {
        Sys.getChar(true);
      } catch (e: Dynamic) {
      }
    #end
  }

  public static function getVersion(): String  {
    return 'Blinx 0.1';
  }

  public function getVersionNumber(): String  {
    return '0.1';
  }
}
