package commands;

import Main.Reference;
import sys.io.File;
import sys.FileSystem;
import haxe.io.Path;

class Fs {
	public var name:String;

	public var desc:String;

	public static function trigger(args:Array<String>):Int {
		if (args[1] == "makedir") {
			var dpath = Path.join([Reference.DIR, args[2]]);
			FileSystem.createDirectory(dpath);
			Sys.println("Created directory at " + dpath);
		} else {
			Sys.println("Command | Arguments | Description");
			Sys.println(" ");
			Sys.println("makedir | dpath      | Creates a directory at $dpath");
		}
		return 0;
	}
}
