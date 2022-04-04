package;

import commands.Shutdown;
import commands.Neofetch;
import commands.Help;
import commands.Quit;

class Main {
	static var latestInput:String;
	static var oldInput:String;

	public static var sysargs:Array<String>;

	public static function main():Void {
		sysargs = Sys.args();

		Sys.println("BasicTerminal v0.1");
		Sys.println("Copyright (c) 2021, 2022, by SidGames5 (formerly known as BasicCorruption)\n");

		while (true) {
			Sys.print('${Sys.environment()["USERNAME"]}@${Sys.environment()["COMPUTERNAME"]}: ');
			latestInput = Sys.stdin().readLine().toLowerCase();
			var command = latestInput.split(" ")[0];
			var args = latestInput.split(" ").slice(1);

			if (sysargs.length != 0) {
				if (sysargs[0] == "-command") {
					command = sysargs[1];
					args = sysargs.slice(2);
				} else {
					Sys.command("FileExec " + sysargs[1]);
				}
			}

			switch (command) {
				case "quit":
					Quit.execute(args);
				case "help":
					Help.execute(args);
				case "neofetch":
					Neofetch.execute(args);
				case "shutdown":
					Shutdown.execute(args);
				case "print":
					Sys.println(args.join(" "));
				case "file":
					Sys.command(command, args);
				default:
					Console.log("<#00ff00>Starting integrated terminal...</>\n");
					Sys.command(latestInput);
			}
		}

		return;
	}
}
