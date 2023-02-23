package;

    import flixel.FlxSprite;
    import flixel.util.FlxColor;
    import flixel.FlxG;

    class ScreensaverHero extends FlxSprite {
        
        public function new(x:Int = 0, y:Int = 0){
            super(x,y);
            super.makeGraphic(30, 30);
        
        }


        override public function update(elapsed:Float){
            
            if (FlxG.keys.justPressed.SPACE){
                this.velocity.x *= -1;
                this.velocity.y *= -1;
                }
            
            if (this.x <= (FlxG.width/2) && this.y <= (FlxG.height/2)){
                this.color = 0xFF1500FF;
            }
            else if (this.x > (FlxG.width/2) && this.y <= (FlxG.height/2)){
                this.color = 0xFFFFFB00;
            }
            else if (this.x <= (FlxG.width/2) && this.y > (FlxG.height/2)){
                this.color = 0xFF16B900;
            }
            else if (this.x > (FlxG.width/2) && this.y > (FlxG.height/2)){
                this.color = 0xFFFF0000;
            }
            

            if (this.velocity.x > 0 && this.x >= FlxG.width - this.width){
                this.x = 0;   
            }
            else if (this.velocity.x < 0 && this.x <= 0){
                this.x = FlxG.width; 
            }

            if (this.velocity.y > 0 && this.y >= FlxG.height - this.height){
                this.y = 0; 
            }
            else if (this.velocity.y < 0 && this.y <= 0){
                this.y = FlxG.height;
            }
            


            super.update(elapsed);

        }
    
}