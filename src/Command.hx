package;

extern interface Command {
	public var name:String;
	public var desc:String;
	public static function trigger():Dynamic;
}
