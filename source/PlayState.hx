package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.FlxG;

class PlayState extends FlxState
{
	var center_position_x:Float = FlxG.width/2;
	var center_position_y:Float = FlxG.height/2;
	var controllable_hero:ControllableHero;
	var text_width:Int = 200;

	override public function create()
	{	

		add(new ControllableHero(cast (center_position_x * 1.5, Int), cast (center_position_y, Int)));

		for (i in 0...10){
			add(new ScreensaverHero(i * 50, i * 75));
		}

		var text = new FlxText(center_position_x - text_width/2, center_position_y, text_width, "hellooo world!!",20);
		text.font = "Book Antiqua";
		text.alignment = CENTER;
		add(text);
		super.create();

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
