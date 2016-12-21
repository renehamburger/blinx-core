//package blinx;

class Blinx {

  public static var version: Int = 3;
  public static var parser: Parser;

  // Entry point
  public static function main() {
    // Get a collection of a class
//    var persons = db.col(Person);
    //parser = new Parser('en');
    trace('Blinx loaded successfully (Version: ${getVersion()})');
  }

  public static function getVersion(): Int  {
    return version;
  }
}


