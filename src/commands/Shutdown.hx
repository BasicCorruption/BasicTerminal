package commands;

class Shutdown {
	public static function execute(args:Array<String>) {
		if (args.length == 0) {
			Sys.exit(0);
		} else {
			switch (args[0]) {
				case "/t":
					// exit the terminal
					Sys.exit(0);
				case "/s":
					// shutdown the computer
					Sys.command("shutdown /s /t 0");
				case "/r":
					// restart the computer
					Sys.command("shutdown /r /t 0");
				case "/h":
					// hibernate the computer
					Sys.command("shutdown /h /t 0");
				case "/l":
					// log off the user
					Sys.command("shutdown /l /t 0");
				case "/p":
					// power off the computer
					Sys.command("shutdown /p /t 0");
				case "/n":
					// remote shutdown
					Sys.command("Nsh.exe");
				default:
					Sys.print("Invalid argument");
			}
		}
	}
}
