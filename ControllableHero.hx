package;

    import flixel.FlxSprite;
    import flixel.FlxG;

    class ControllableHero extends FlxSprite {
        
        public function new(x:Int = 0, y:Int = 0){
            super(x,y);
            super.makeGraphic(15, 15);
        
        }

        override public function update(elapsed:Float){
            
          
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
            


            super.update(elapsed);

        }
    }