package;


class Main {
  public static var args:Array<String>;
  
  public static function main() {
    args = Sys.args();
    
    switch (args[0]) {
      case "-make":
        if (args[1] != null) {
          var fn = args[1];
        }
    }
  }
}
