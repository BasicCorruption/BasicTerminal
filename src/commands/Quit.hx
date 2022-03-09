package commands;

class Quit implements Command {
	public var name:String;

	public var desc:String;

	public static function trigger():Int {
		Sys.exit(0);
		return 0;
	}
}
