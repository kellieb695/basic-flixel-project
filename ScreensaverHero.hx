package;

    import flixel.FlxSprite;
    import flixel.util.FlxColor;
    import flixel.math.FlxRandom;
    import flixel.FlxG;

    class ScreensaverHero extends FlxSprite {
        
        public function new(x:Int = 0, y:Int = 0){
            super(x,y);
            super.makeGraphic(30, 40);
        }

        var hue:Float = 0;
        var velocityX:Float;
        var velocityY:Float;
        

        override public function update(elapsed:Float){
            
            velocityX = 20;
            velocityY = 3;
            hue += this.x;
            this.velocity.x = velocityX;
            this.velocity.y = velocityY;
            if (hue > 360)
                    hue -= 360;
            var color = FlxColor.fromHSB(Std.int(hue), 1, 1);
            this.color = color;

            if (this.velocity.x > 0 && this.x >= FlxG.width - this.width){
                this.x = FlxG.width - this.width;
                this.velocity.x *= -1;
            }
            else if (this.velocity.x < 0 && this.x <= 0){
                this.x = 0;
                this.velocity.x *= -1;
            }


            super.update(elapsed);

        }
    
}