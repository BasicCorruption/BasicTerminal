package commands;

class Quit {
	public var name:String;

	public var desc:String;

	public static function trigger():Int {
		Sys.exit(0);
		return 0;
	}
}
