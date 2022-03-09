import sys.FileSystem;
import sys.io.File;
import haxe.io.Path;

using StringTools;

class Main {
	static var latestInput:String;
	static var oldInput:String;

	static var args:Dynamic;

	static function main() {
		Console.log("<red>.                    .':d0NMMMMMMMMMMMk.                               .xMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>                         .;oKWMMMMMMMMk.                               .xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>                            .dNMMMMMMMk.                               .xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>      .looooooodoooc;.        cXMMMMMMXxddddddddddd:.     .cdddddddddddxKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>      cNMMMMMMMMMMMMWXO:      .oWMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN00NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWX0KWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNN</red>");
		Console.log("<red>      cNMMMMMMMMMMMMMMMK;      :XMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMN0kkkkkkkkOOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXc..:KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN0kkkkkkkkkkkkkkOKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO, .xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXl',</red>");
		Console.log("<red>      cNMMMMMMMMMMMMMMMNl      :XMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMk.          .,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx;;dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0;.....     .....lNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,:OWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,</red>");
		Console.log("<red>      cNMMMMMMMMMMMMMMW0,     .dWMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMk. .cxxxxxdl'  'OMMMMMMMMMMWWWWMMMMMMMMMMMMMMWWWMMMMMMMMWWWWMMMMMMMMMMMWWWWMMMMMMMMMMMMMMMN0kkkkk:  .lkkkkOKWMMMMMMMMWWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWMMMMMMMMWWWMMMMMMMMMMWNWMMMMMMMMMMMMMWWWMMMMMMMMMMMMMMWWWWMMMMMMMMMK,</red>");
		Console.log("      :XWWWWWWWWWWWNKOl.     .lXMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. '0MMMMMMMO.  lWMMMMWKxl:;,,;cd0WMMMMMMXkl:;,;:lxXMMMWkc:xWMMMMMWXko:;,,;:cd0WMMMMMMMMMMMMMMMMMk. '0MMMMMMMMMMWXOoc;,,:ld0WMMMMMKl:oXNklcOWMNx:cONOo:;,;cxXMW0dc;,;:oONMMMMMXd:l0MMMWOc:xXKdc;,;:d0WMMMMMMNOdc:;,;:lkXMMMMMK,</red>");
		Console.log("<red>      .,;;;;;;;;;;,'.      .:ONMMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. 'OWWWWWNXo. .kWMMMMO;.':lll;. .lXMMMWk, .;clc;',kWMMNl  :XMMMW0c. ..,;;'.. 'kWMMMMMMMMMMMMMMMMk. '0MMMMMMMMMXd'..':lc;. .:OWMMMk. .c;..,kWMX:  ';',::,.  'l:.';:;'  .cKMMMM0' .xMMMWo  .;,,;:;.  .lXMMMMNo..;cll:'  ,OWMMMK,</red>");
		Console.log("<red>                          ;xXMMMMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx.  ';::;;'. .:OWMMMMMWK0NWMMMWk' .xWMMX:  lXMMMWNXWMMMNl  :XMMWk' .cOXWWWNX0xkNMMMMMMMMMMMMMMMMMk. '0MMMMMMMMXc .c0NMMMWXd. .kWMMk.  .:kKNWMMX:  .lKNWWW0;   ,kXWMWNx.  lNMMM0' .xMMMWo   :ONWMWXd. .dWMMMMX0XWMMMWXl  ;XMMMK,</red>");
		Console.log("<red>                           .,lONMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx.  .,,,,''...'cOWMMMMWXOkxxdool.  lWMMNd. .,cox0XWMMMMNl  :XMMK; .oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMk. '0MMMMMMMWd. .x0000000k,  cNMMk.  cXMMMMMMX:  cXMMMMMWx. .kMMMMMMWl  :XMMM0' .xMMMWo  ,0MMMMMMX:  cNMMMMNKkxxddoo;  '0MMMK,</red>");
		Console.log("<red>      .:lllloooooollc:,.      .:OWMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. .OWWWWWNN0o. .dWMW0c..';:::;,.  lWMMMW0d:,.  ..c0WMMNl  :XMM0' .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMx. '0MMMMMMMWo   ......'.....lNMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  :XMMM0' .xMMMWo  ;KMMMMMMWl  cNMMNx,..,;:::;.  .OMMMK,</red>");
		Console.log("<red>      cNMMMMMMMMMMMMMMWXOc.     .kWMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. '0MMMMMMMMX;  ;XMK;  cXWWWWWK;  lWMMMMMMMNXOd,  ,0MMNl  :XMMX:  :XMMMMMMMMMMMMMMMMMMMMMMMMMMMMx. '0MMMMMMMMx. .xKKKKKKKKKKKNWMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  ;XMMM0' .xMMMWo  ;KMMMMMMWo  cNMWx. .kNWWMMWx. .OMMMK,</red>");
		Console.log("<red>      :NMMMMMMMMMMMMMMMMMWd.     ,0MMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. .d0000000kc. .oNMK;  cKNWWN0c.  lNMMKolkKNWWNd. '0MMNl  :XMMWO,  ,d0XNNXKkll0WMMMMMMMMMMMMMMMMx. '0MMMMMMMMNl. ;xKNWWWXOdkNMMMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  ;XMMM0' .xMMMWo  ;KMMMMMMWo  :NMWx. .xNWWNXx'  .OMMMK,</red>");
		Console.log("<red>      :XMMMMMMMMMMMMMMMMMMO'     .kMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx.   .......  .,xNMMWO;. .,,,'',.  lNMWO;...',,'. 'xNMMNl  :XMMMMXd'  ..''....;kWMMMMMMMMMMMMMMMMx. '0MMMMMMMMMNk:...',,,...lXMMMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  ;XMMM0' .xMMMWo  ;KMMMMMMWo  :NMMNo. .',,,'',. .OMMMK,</red>");
		Console.log("<red>      cNMMMMMMMMMMMMMMMMMWx.     .kMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMKdlllllllllodk0NMMMMMMNOdlllld0N0oo0WMMMN0kdllllokXMMMMWOolOWMMMMMMNOdllllodx0NMMMMMMMMMMMMMMMMMMKdlxXMMMMMMMMMMMWKxolllldkKWMMMMMKdlxXMMMMMMMWklo0WMMMMMMXdlxXMMMMMMM0olkNMMMNxldKMMMM0olkNMMMMMMW0olOWMMMWKxolllokKXklxXMMMNklo</red>");
		Console.log("<red>      cNMMMMMMMMMMMMMMMWKd.      ;XMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>      .looooooooooooolc;.       ,OWMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>                              .cKWMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>                           .'lOWMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Console.log("<red>                       ..,lkXWMMMMMMMMMMMMMMMMMMMMM0'     ,0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
		Sys.println(" ");
		Sys.println(" ");
		Console.log('<blue>Welcome to BasicTerminal v${Reference.VERSION}! Type "help" to view a list of commands.</blue>');
		Sys.println(" ");
		while (true) {
			latestInput = Sys.stdin().readLine().toLowerCase();

			args = latestInput.split(" ");
			var command = latestInput.split(" ")[0];

			if (command == "quit") {
				Sys.exit(0);
			} else if (command == "help") {
				Console.log("<red>.                    .':d0NMMMMMMMMMMMk.                               .xMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>                         .;oKWMMMMMMMMk.                               .xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>                            .dNMMMMMMMk.                               .xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>      .looooooodoooc;.        cXMMMMMMXxddddddddddd:.     .cdddddddddddxKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>      cNMMMMMMMMMMMMWXO:      .oWMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN00NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWX0KWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNN</red>");
				Console.log("<red>      cNMMMMMMMMMMMMMMMK;      :XMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMN0kkkkkkkkOOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXc..:KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN0kkkkkkkkkkkkkkOKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO, .xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXl',</red>");
				Console.log("<red>      cNMMMMMMMMMMMMMMMNl      :XMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMk.          .,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx;;dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0;.....     .....lNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,:OWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,</red>");
				Console.log("<red>      cNMMMMMMMMMMMMMMW0,     .dWMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMk. .cxxxxxdl'  'OMMMMMMMMMMWWWWMMMMMMMMMMMMMMWWWMMMMMMMMWWWWMMMMMMMMMMMWWWWMMMMMMMMMMMMMMMN0kkkkk:  .lkkkkOKWMMMMMMMMWWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWMMMMMMMMWWWMMMMMMMMMMWNWMMMMMMMMMMMMMWWWMMMMMMMMMMMMMMWWWWMMMMMMMMMK,</red>");
				Console.log("      :XWWWWWWWWWWWNKOl.     .lXMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. '0MMMMMMMO.  lWMMMMWKxl:;,,;cd0WMMMMMMXkl:;,;:lxXMMMWkc:xWMMMMMWXko:;,,;:cd0WMMMMMMMMMMMMMMMMMk. '0MMMMMMMMMMWXOoc;,,:ld0WMMMMMKl:oXNklcOWMNx:cONOo:;,;cxXMW0dc;,;:oONMMMMMXd:l0MMMWOc:xXKdc;,;:d0WMMMMMMNOdc:;,;:lkXMMMMMK,</red>");
				Console.log("<red>      .,;;;;;;;;;;,'.      .:ONMMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. 'OWWWWWNXo. .kWMMMMO;.':lll;. .lXMMMWk, .;clc;',kWMMNl  :XMMMW0c. ..,;;'.. 'kWMMMMMMMMMMMMMMMMk. '0MMMMMMMMMXd'..':lc;. .:OWMMMk. .c;..,kWMX:  ';',::,.  'l:.';:;'  .cKMMMM0' .xMMMWo  .;,,;:;.  .lXMMMMNo..;cll:'  ,OWMMMK,</red>");
				Console.log("<red>                          ;xXMMMMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx.  ';::;;'. .:OWMMMMMWK0NWMMMWk' .xWMMX:  lXMMMWNXWMMMNl  :XMMWk' .cOXWWWNX0xkNMMMMMMMMMMMMMMMMMk. '0MMMMMMMMXc .c0NMMMWXd. .kWMMk.  .:kKNWMMX:  .lKNWWW0;   ,kXWMWNx.  lNMMM0' .xMMMWo   :ONWMWXd. .dWMMMMX0XWMMMWXl  ;XMMMK,</red>");
				Console.log("<red>                           .,lONMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx.  .,,,,''...'cOWMMMMWXOkxxdool.  lWMMNd. .,cox0XWMMMMNl  :XMMK; .oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMk. '0MMMMMMMWd. .x0000000k,  cNMMk.  cXMMMMMMX:  cXMMMMMWx. .kMMMMMMWl  :XMMM0' .xMMMWo  ,0MMMMMMX:  cNMMMMNKkxxddoo;  '0MMMK,</red>");
				Console.log("<red>      .:lllloooooollc:,.      .:OWMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. .OWWWWWNN0o. .dWMW0c..';:::;,.  lWMMMW0d:,.  ..c0WMMNl  :XMM0' .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMx. '0MMMMMMMWo   ......'.....lNMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  :XMMM0' .xMMMWo  ;KMMMMMMWl  cNMMNx,..,;:::;.  .OMMMK,</red>");
				Console.log("<red>      cNMMMMMMMMMMMMMMWXOc.     .kWMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. '0MMMMMMMMX;  ;XMK;  cXWWWWWK;  lWMMMMMMMNXOd,  ,0MMNl  :XMMX:  :XMMMMMMMMMMMMMMMMMMMMMMMMMMMMx. '0MMMMMMMMx. .xKKKKKKKKKKKNWMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  ;XMMM0' .xMMMWo  ;KMMMMMMWo  cNMWx. .kNWWMMWx. .OMMMK,</red>");
				Console.log("<red>      :NMMMMMMMMMMMMMMMMMWd.     ,0MMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx. .d0000000kc. .oNMK;  cKNWWN0c.  lNMMKolkKNWWNd. '0MMNl  :XMMWO,  ,d0XNNXKkll0WMMMMMMMMMMMMMMMMx. '0MMMMMMMMNl. ;xKNWWWXOdkNMMMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  ;XMMM0' .xMMMWo  ;KMMMMMMWo  :NMWx. .xNWWNXx'  .OMMMK,</red>");
				Console.log("<red>      :XMMMMMMMMMMMMMMMMMMO'     .kMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMx.   .......  .,xNMMWO;. .,,,'',.  lNMWO;...',,'. 'xNMMNl  :XMMMMXd'  ..''....;kWMMMMMMMMMMMMMMMMx. '0MMMMMMMMMNk:...',,,...lXMMMMk. .OMMMMMMMX:  lWMMMMMMk. .OMMMMMMWo  ;XMMM0' .xMMMWo  ;KMMMMMMWo  :NMMNo. .',,,'',. .OMMMK,</red>");
				Console.log("<red>      cNMMMMMMMMMMMMMMMMMWx.     .kMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMKdlllllllllodk0NMMMMMMNOdlllld0N0oo0WMMMN0kdllllokXMMMMWOolOWMMMMMMNOdllllodx0NMMMMMMMMMMMMMMMMMMKdlxXMMMMMMMMMMMWKxolllldkKWMMMMMKdlxXMMMMMMMWklo0WMMMMMMXdlxXMMMMMMM0olkNMMMNxldKMMMM0olkNMMMMMMW0olOWMMMWKxolllokKXklxXMMMNklo</red>");
				Console.log("<red>      cNMMMMMMMMMMMMMMMWKd.      ;XMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>      .looooooooooooolc;.       ,OWMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>                              .cKWMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>                           .'lOWMMMMMMMMMMMMMMMMMMM0'     '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
				Console.log("<red>                       ..,lkXWMMMMMMMMMMMMMMMMMMMMM0'     ,0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</red>");
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
