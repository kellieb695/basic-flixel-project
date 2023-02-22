package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{

	var hero:Hero;
	var screensaverHero:ScreensaverHero;
	override public function create()
	{	
		hero = new Hero(300,300);
		add(hero);

		screensaverHero = new ScreensaverHero(50,50);
		add(screensaverHero);

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
