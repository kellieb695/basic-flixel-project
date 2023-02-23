package;

    import flixel.FlxSprite;
    import flixel.util.FlxColor;
    import flixel.FlxG;

    class ScreensaverHero extends FlxSprite {
        
        public function new(x:Int = 0, y:Int = 0){
            super(x,y);
            super.makeGraphic(30, 40);
        
        }

        var hue:Float = 0;
        

        override public function update(elapsed:Float){
            
            
            hue += this.x;
            
            if (hue > 360)
                    hue -= 360;
            var color = FlxColor.fromHSB(Std.int(hue), 1, 1);
            this.color = color;

            if (this.x >= FlxG.width - (this.width/2)){
                this.x = 0;
            }
            else if (this.velocity.x < 0 && this.x <= 0){
                this.x = 0;
                this.velocity.x *= -1;
            }

            if (this.y >= FlxG.height - (this.height/2)){
                this.y = 0;
            }
            else if (this.velocity.y < 0 && this.y <= 0){
                this.y = 0;
                this.velocity.y *= -1;
            }
            


            super.update(elapsed);

        }
    
}