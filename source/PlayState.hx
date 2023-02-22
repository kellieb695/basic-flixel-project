package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{

	var hero:Hero;
	override public function create()
	{	
		hero = new Hero(300,300);
		add(hero);

		var text = new FlxText(260,220,200, "hellooo world!!",20);
		text.font = "Book Antiqua";
		add(text); 
		super.create();



	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
