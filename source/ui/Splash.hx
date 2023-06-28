package ui;
import flixel.*;
import flixel.util.*;
class Splash extends FlxState{
    private var Splash:FlxSprite;
    private var EventSwitch:Null<FlxTimer->Void>;
    override public function create(){
        super.create();
        Splash = new FlxSprite(0,0,"assets/splash.png");
        switchtomenu();
    }
    private function switchtomenu():Void{
        new FlxTimer().start(3.0, EventSwitch);
        FlxG.switchState(new Menu());
    }
    override public function update(elapsed:Float){
        super.update(elapsed);
    }
}