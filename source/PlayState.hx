package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var hero:Hero;
	override public function create()
	{	
		hero = new Hero(300,300);
		add(hero);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
