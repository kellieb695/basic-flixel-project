package;

    import flixel.FlxSprite;

    class ScreensaverHero extends FlxSprite {
        
        public function new(x:Int = 0, y:Int = 0){
            super(x,y);
            super.makeGraphic(30, 40);
        }

        override public function update(elapsed:Float){
            super.update(elapsed);
        }
    
}