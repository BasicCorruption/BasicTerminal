package commands;

import Main.Reference;

class Version {
	public var name:String;

	public var desc:String;

	public static function trigger():Int {
		Console.log('<white>BasicTerminal v${Reference.VERSION}</white>');
		return 0;
	}
}
