package commands;

class Neofetch {
	public static function execute(args:Array<String>) {
		Console.log("<#ffaa00>                                        </>");
		Console.log("<#ffaa00>                                        </>");
		Console.log("<#ffaa00>     %%%%%%%%*             (%%%%%%%(    </>   <#ff0000>Haxe: 4.2.5</>");
		Console.log("<#ffaa00>     &%%%%%%%%%%%%.   %%%((((((((((/    </>   <#ff9900>OS: " + Sys.systemName() + "</>");
		Console.log("<#ffaa00>     &&%%%%%%%%%%%%###((((((((((((//    </>   <#ffff00>User: " + Sys.environment()["USERNAME"] + "</>");
		Console.log("<#ffaa00>     &&%%%%%%%%%########((((((((((//    </>   <#00ff00>System: " + Sys.environment()["COMPUTERNAME"] + "</>");
		Console.log("<#ffaa00>      &&%%%%%%#############((((((/      </>");
		Console.log("<#ffaa00>        %%%##################(((/       </>");
		Console.log("<#ffaa00>         #######################        </>");
		Console.log("<#ffaa00>        #####################(((/       </>");
		Console.log("<#ffaa00>      &&###################((((((/      </>");
		Console.log("<#ffaa00>     &&#################((((((((((//    </>");
		Console.log("<#ffaa00>     &&###############((((((((((((//    </>");
		Console.log("<#ffaa00>     &##########(((   ###((((((((((/    </>");
		Console.log("<#ffaa00>     #((((((((             .#######(    </>");
		Console.log("<#ffaa00>                                        </>");
	}
}
