package commands;

class Help {
	public static function execute(args:Array<String>) {
		Sys.println("NAME | DESCRIPTION");
		Sys.println("------------------");
		Sys.println("help | Display this help");
		Sys.println("quit | Exit the terminal");
	}
}
