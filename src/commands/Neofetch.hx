package commands;

class Neofetch {
	public static function execute(args:Array<String>) {
		Console.log("<#ffaa00>                                        </>");
		Console.log("<#ffaa00>                                        </>");
		Console.log("<#ffaa00>     %%%%%%%%*             (%%%%%%%(    </>   <#000000>Haxe: " + StaticExtender.getHaxeCompilerVersion() + "</>");
		Console.log("<#ffaa00>     &%%%%%%%%%%%%.   %%%((((((((((/    </>   <#ff0000>OS: " + Sys.systemName() + "</>");
		Console.log("<#ffaa00>     &&%%%%%%%%%%%%###((((((((((((//    </>   <#ff9900>User: " + Sys.environment()["USERNAME"] + "</>");
		Console.log("<#ffaa00>     &&%%%%%%%%%########((((((((((//    </>   <#ffff00>System: " + Sys.environment()["COMPUTERNAME"] + "</>");
		Console.log("<#ffaa00>      &&%%%%%%#############((((((/      </>   <#00ff00>Architecture: " + Sys.environment()["PROCESSOR_ARCHITECTURE"] + "</>");
		Console.log("<#ffaa00>        %%%##################(((/       </>   <#00ffff>Processors: " + Sys.environment()["NUMBER_OF_PROCESSORS"] + "</>");
		Console.log("<#ffaa00>         #######################        </>   <#0000ff>Shell: " + Sys.environment()["SHELL"] + "</>");
		Console.log("<#ffaa00>        #####################(((/       </>   <#8844ee>Desktop: " + Sys.environment()["DESKTOP_SESSION"] + "</>");
		Console.log("<#ffaa00>      &&###################((((((/      </>   <#ff00ff>Home: " + Sys.environment()["HOME"] + "</>");
		Console.log("<#ffaa00>     &&#################((((((((((//    </>");
		Console.log("<#ffaa00>     &&###############((((((((((((//    </>");
		Console.log("<#ffaa00>     &##########(((   ###((((((((((/    </>");
		Console.log("<#ffaa00>     #((((((((             .#######(    </>");
		Console.log("<#ffaa00>                                        </>");
	}
}

class StaticExtender {
	public static macro function getHaxeCompilerVersion():haxe.macro.Expr {
		var proc_haxe_version = new sys.io.Process('haxe', ['-version']);
		if (proc_haxe_version.exitCode() != 0) {
			throw("`haxe -version` failed: " + proc_haxe_version.stderr.readAll().toString());
		}
		#if (haxe_ver >= 4)
		var haxe_ver = proc_haxe_version.stdout.readLine();
		#else
		var haxe_ver = proc_haxe_version.stderr.readLine();
		#end
		return macro $v{haxe_ver};
	}
}
