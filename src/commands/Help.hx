package commands;

class Help {
	public static function execute(args:Array<String>) {
		Sys.println("NAME     | DESCRIPTION");
		Sys.println("----------------------");
		Sys.println("help     | Display this help");
		Sys.println("quit     | Exit the terminal");
		Sys.println("neofetch | Display system information");
		Sys.println("shutdown | Shutdown the computer");
		Sys.println("print    | Print text onto the screen");
		Sys.println("file     | File utilities");
	}
}
