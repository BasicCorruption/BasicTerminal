package;

import sys.io.File;
import haxe.io.Path;

class Main {
	public static var path:String;

	public static function main() {
		path = Path.normalize(Sys.args()[0]);

		var lines = File.getContent(path).split("\n");

		for (c in lines) {
			Sys.command("-command " + c);
		}
	}
}
