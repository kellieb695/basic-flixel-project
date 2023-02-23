package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.FlxG;

class PlayState extends FlxState
{

	var screensaverHero1:ScreensaverHero;
	var screensaverHero2:ScreensaverHero;
	var screensaverHero3:ScreensaverHero;
	var screensaverHero4:ScreensaverHero;
	var controllableHero:ControllableHero;

	override public function create()
	{	

		controllableHero = new ControllableHero(500, 400);
		add(controllableHero);

		screensaverHero1 = new ScreensaverHero(50, 0);
		screensaverHero2 = new ScreensaverHero(50, 75);
		screensaverHero3 = new ScreensaverHero(50, 150);
		screensaverHero4 = new ScreensaverHero(50, 325);
		screensaverHero1.velocity.x = FlxG.random.float(-75,75);
		screensaverHero1.velocity.y = FlxG.random.float(-75,75);
		screensaverHero2.velocity.x = FlxG.random.float(-75,75);
		screensaverHero2.velocity.y = FlxG.random.float(-75,75);
		screensaverHero3.velocity.x = FlxG.random.float(-75,75);
		screensaverHero3.velocity.y = FlxG.random.float(-75,75);
		screensaverHero4.velocity.x = FlxG.random.float(-75,75);
		screensaverHero4.velocity.y = FlxG.random.float(-75,75);
		add(screensaverHero1);
		add(screensaverHero2);
		add(screensaverHero3);
		add(screensaverHero4);



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
