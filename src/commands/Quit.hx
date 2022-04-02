package commands;

using StringTools;

class Quit {
	public static function execute(args:Array<String>) {
		if (args[0] != null) {
			switch (args[0]) {
				case "0":
					Sys.exit(0);
				case "1":
					Sys.exit(1);
				case "2":
					Sys.exit(2);
				case "126":
					Sys.exit(126);
				case "127":
					Sys.exit(127);
				case "128":
					Sys.exit(128);
				case "130":
					Sys.exit(130);
				case "255":
					Sys.exit(255);
			}
		} else {
			Sys.exit(0);
		}
	}
}
