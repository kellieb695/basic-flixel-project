package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.math.FlxRandom;

class PlayState extends FlxState
{

	var hero:Hero;
	var screensaverHero1:ScreensaverHero;
	var screensaverHero2:ScreensaverHero;
	var screensaverHero3:ScreensaverHero;
	override public function create()
	{	
		hero = new Hero(300,300);
		add(hero);

		screensaverHero1 = new ScreensaverHero(50,50);
		screensaverHero2 = new ScreensaverHero(100,100);
		screensaverHero3 = new ScreensaverHero(400,400);
		screensaverHero1.velocity.x = 70;
		screensaverHero1.velocity.y = 50;
		screensaverHero2.velocity.x = 50;
		screensaverHero2.velocity.y = 40;
		screensaverHero3.velocity.x = 50;
		screensaverHero3.velocity.y = 70;
		add(screensaverHero1);
		add(screensaverHero2);
		add(screensaverHero3);



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
