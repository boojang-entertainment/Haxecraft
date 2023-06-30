package ui;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxG;
import flixel.util.*;
class Splash extends FlxState{
    private var Splash:FlxSprite;
    private var EventSwitch:Null<FlxTimer->Void>;
    override public function create(){
        super.create();
        Splash = new FlxSprite(0,0,"assets/splash.png");
        add(Splash);
        new FlxTimer().start(3.0, switchtomenu);
    }
    private function switchtomenu(tmr:FlxTimer):Void{
        FlxG.switchState(new Menu());
    }
    override public function update(elapsed:Float){
        super.update(elapsed);
    }
}