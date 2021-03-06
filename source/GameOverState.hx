package ;

//import flash.ui.Mouse;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flash.display.StageDisplayState;
// No more highscore implementation

class GameOverState extends FlxState
{
	private var nights:Int;

	public function new(nightsSurvived:Int)
	{
		super();

		this.nights = nightsSurvived;
	}

	override public function create():Void
	{
		var t:FlxText;
		t = new FlxText(0, 10, FlxG.width, "Game Over");
		t.size = 16;
		t.alignment = "center";
		add(t);
		t = new FlxText(0, FlxG.height - 20, FlxG.width, "click to retry");
		t.alignment = "center";
		add(t);

		t = new FlxText(0, 32, FlxG.width, "'Kingdom' by noio");
		t.alignment = "center";
		add(t);

		FlxG.stage.displayState = StageDisplayState.NORMAL;
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if (FlxG.mouse.justPressed)
		{
			FlxG.mouse.visible = false;
			FlxG.switchState(new MenuState());
		}
	}
}
