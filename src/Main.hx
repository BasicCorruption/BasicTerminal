import sys.FileSystem;
import sys.io.File;
import haxe.io.Path;
import commands.*;

using StringTools;

class Main {
	static var latestInput:String;
	static var oldInput:String;

	static var args:Dynamic;

	static function main() {
		Console.log("<red>######                            #######                                             </red>");
		Console.log("<red>#     #   ##    ####  #  ####        #    ###### #####  #    # # #    #   ##   #      </red>");
		Console.log("<red>#     #  #  #  #      # #    #       #    #      #    # ##  ## # ##   #  #  #  #      </red>");
		Console.log("<red>######  #    #  ####  # #            #    #####  #    # # ## # # # #  # #    # #      </red>");
		Console.log("<red>#     # ######      # # #            #    #      #####  #    # # #  # # ###### #      </red>");
		Console.log("<red>#     # #    # #    # # #    #       #    #      #   #  #    # # #   ## #    # #      </red>");
		Console.log("<red>######  #    #  ####  #  ####        #    ###### #    # #    # # #    # #    # ###### </red>");
		Sys.println(" ");
		Sys.println(" ");
		Console.log('<blue>Welcome to BasicTerminal v${Reference.VERSION}! Type "help" to view a list of commands.</blue>');
		Sys.println(" ");
		while (true) {
			latestInput = Sys.stdin().readLine().toLowerCase();

			args = latestInput.split(" ");
			var command = latestInput.split(" ")[0];

			if (command == "quit") {
				var x = Quit.trigger();
				Sys.println("Task completed with code " + x);
			} else if (command == "help") {
				Console.log("<red>######                            #######                                             </red>");
				Console.log("<red>#     #   ##    ####  #  ####        #    ###### #####  #    # # #    #   ##   #      </red>");
				Console.log("<red>#     #  #  #  #      # #    #       #    #      #    # ##  ## # ##   #  #  #  #      </red>");
				Console.log("<red>######  #    #  ####  # #            #    #####  #    # # ## # # # #  # #    # #      </red>");
				Console.log("<red>#     # ######      # # #            #    #      #####  #    # # #  # # ###### #      </red>");
				Console.log("<red>#     # #    # #    # # #    #       #    #      #   #  #    # # #   ## #    # #      </red>");
				Console.log("<red>######  #    #  ####  #  ####        #    ###### #    # #    # # #    # #    # ###### </red>");
				Sys.println(" ");
				Console.log('<blue>BasicTerminal v${Reference.VERSION}</blue>');
				Sys.println(" ");
				Sys.println("Command | Arguments | Description");
				Sys.println(" ");
				Sys.println("CLR     | None      | Clears the console");
				Sys.println("FS      | None      | Opens the filesystem menu");
				Sys.println("HELP    | None      | The command you just used");
				Sys.println("QUIT    | None      | Quits the terminal");
				Sys.println("VERSION | None      | Prints the current version of Basic Terminal");
			} else if (command == "version") {
				Console.log('<white>BasicTerminal v${Reference.VERSION}</white>');
			} else if (command == "cd") {
				if (args[1]) {
					if (!args[1].contains(":")) {
						// to be worked on
					} else {
						Reference.DIR = args[1];
					}
				} else {
					Console.log(Reference.DIR);
				}
			} else if (command == "fs") {
				if (args[1] == "makedir") {
					var dpath = Path.join([Reference.DIR, args[2]]);
					FileSystem.createDirectory(dpath);
					Sys.println("Created directory at " + dpath);
				} else {
					Sys.println("Command | Arguments | Description");
					Sys.println(" ");
					Sys.println("makedir | dpath      | Creates a directory at $dpath");
				}
			} else if (command == "clr") {
				Sys.println("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
			} else {
				Console.log("<red>Error: Unrecognised command</red>");
			}

			oldInput = latestInput;
		}
		return;
	}
}

class Reference {
	public static final VERSION = "0.0.1-dev+1";

	public static var DIR = "C:";
}
