package;

class Main {
	public static var ipv4:String;
	public static var operation:String;
	public static var rop:String;
	public static var confirm:String;

	public static function main() {
		Sys.print("Enter target IPv4 address: ");
		ipv4 = Sys.stdin().readLine().toLowerCase();

		Sys.print("Enter operation (s/r/h/l/p): ");
		operation = Sys.stdin().readLine().toLowerCase();

		Sys.print("Confirm (y/n): ");
		confirm = Sys.stdin().readLine().toLowerCase();

		if (confirm == "y") {
			switch (operation) {
				case "s":
					rop = "Shut down";
				case "r":
					rop = "Restart";
				case "h":
					rop = "Hibernate";
				case "l":
					rop = "Log off";
				case "p":
					rop = "Power off";
			}

			Console.log("<#ff0000>IPv4: " + ipv4 + "; Operation: " + rop + ";</>");
		} else {
			Console.error("Aborted.");
			return;
		}
	}
}
