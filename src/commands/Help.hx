package commands;

import Main.Reference;

class Help {
	public var name:String;

	public var desc:String;

	public static function trigger():Int {
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
		return 0;
	}
}
