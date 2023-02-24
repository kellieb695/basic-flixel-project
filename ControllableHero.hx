package;

    import flixel.FlxSprite;
    import flixel.FlxG;

    
    class ControllableHero extends FlxSprite {
        
        var starting_height:Int = 15;
        var starting_width:Int = 15;

        public function new(x:Int = 0, y:Int = 0){
            super(x,y);
            super.makeGraphic(starting_height, starting_width);
            
        }

        public function keyboardMovement(){
            if (FlxG.keys.pressed.RIGHT){
                this.x += 1;
            }
        if (FlxG.keys.pressed.LEFT){
                this.x -= 1;
            }
        if (FlxG.keys.pressed.DOWN){
            this.y += 1;
            }
        if (FlxG.keys.pressed.UP){
            this.y -= 1;                
            }   
        }

        public function enforceBoundaries(){
            if (this.x >= FlxG.width - this.width){
                this.x = FlxG.width - this.width;   
            }
            else if (this.x <= 0){
                this.x = 0; 
            }

            if (this.y >= FlxG.height - this.height){
                this.y = FlxG.height - this.width; 
            }
            else if (this.y <= 0){
                this.y = 0;
            }
        }

        override public function update(elapsed:Float){
          
            enforceBoundaries();
            keyboardMovement();

            super.update(elapsed);

        }
    }