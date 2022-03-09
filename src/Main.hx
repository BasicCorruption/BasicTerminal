package;

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
				Sys.println("\n> Task completed with code " + x);
			} else if (command == "help") {
				var x = Help.trigger();
				Sys.println("\n> Task completed with code " + x);
			} else if (command == "version") {
				var x = Version.trigger();
				Sys.println("\n> Task completed with code " + x);
			} else if (command == "cd") {
				var x = Cd.trigger(args);
				Sys.println("\n> Task completed with code " + x);
			} else if (command == "fs") {
				var x = Fs.trigger(args);
				Sys.println("\n> Task completed with code " + x);
			} else if (command == "clr") {
				var x = Clr.trigger();
				Sys.println("\n> Task completed with code " + x);
			} else {
				Console.log("<red>Error: Unrecognised command</red>");
			}

			oldInput = latestInput;
		}
		return;
	}
}

class Reference {
	public static final VERSION = "0.0.2-dev.1";

	public static var DIR = "/home/";
}
