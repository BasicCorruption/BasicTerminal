package commands;

import Main.Reference;

using StringTools;

class Cd {
	public var name:String;

	public var desc:String;

	public static function trigger(args:Array<String>):Int {
		if (args[1] != null) {
			if (!args[1].contains(":")) {
				// to be worked on
			} else {
				Reference.DIR = args[1];
			}
		} else {
			Console.log(Reference.DIR);
		}
		return 0;
	}
}
