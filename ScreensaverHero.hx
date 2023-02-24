package;

    import flixel.FlxSprite;
    import flixel.util.FlxColor;
    import flixel.FlxG;


    class ScreensaverHero extends FlxSprite {
        
        var hero_width:Int = 30;
        var hero_height:Int = 30;
        var blue:FlxColor = 0xFF1500FF;
        var yellow:FlxColor = 0xFFFFFB00;
        var green:FlxColor = 0xFF16B900;
        var red:FlxColor = 0xFFFF0000;
        var min_speed:Int = -75;
        var max_speed:Int = 75;

        public function new(x:Int = 0, y:Int = 0){
            super(x,y);
            super.makeGraphic(hero_height, hero_width);
            this.velocity.x = FlxG.random.float(min_speed, max_speed);
            this.velocity.y = FlxG.random.float(min_speed, max_speed);
        }

        public function screenWrap(){
            if (this.velocity.x > 0 && this.x >= FlxG.width){
                this.x = -(this.width);   
            }
            else if (this.velocity.x < 0 && (this.x + this.width) <= 0){
                this.x = FlxG.width; 
            }

            if (this.velocity.y > 0 && this.y >= FlxG.height){
                this.y = 0; 
            }
            else if (this.velocity.y < 0 && (this.y + this.height) <= 0){
                this.y = FlxG.height;
            }
        }

        public function changeColor(){
            if (this.x <= (FlxG.width/2) && this.y <= (FlxG.height/2)){
                this.color = blue;
            }
            else if (this.x > (FlxG.width/2) && this.y <= (FlxG.height/2)){
                this.color = yellow;
            }
            else if (this.x <= (FlxG.width/2) && this.y > (FlxG.height/2)){
                this.color = green;
            }
            else if (this.x > (FlxG.width/2) && this.y > (FlxG.height/2)){
                this.color = red;
            }
        }

        public function invertDirection(){
            if (FlxG.keys.justPressed.SPACE){
                this.velocity.x *= -1;
                this.velocity.y *= -1;
                }
        }


        override public function update(elapsed:Float){
     
            screenWrap();
            changeColor();
            invertDirection();
       
            super.update(elapsed);

        }
    
}