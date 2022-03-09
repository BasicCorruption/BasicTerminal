package commands;

class Quit implements Command {
	public var name:String;

	public var desc:String;

	public static function trigger():Dynamic {
		Sys.exit(0);
		throw new haxe.exceptions.NotImplementedException();
	}
}
