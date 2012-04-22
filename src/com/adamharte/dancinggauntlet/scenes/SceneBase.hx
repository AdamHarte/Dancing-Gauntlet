package com.adamharte.dancinggauntlet.scenes;
import nme.display.Sprite;
import nme.events.Event;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class SceneBase extends Sprite
{
	public var sceneName:String;
	

	public function new() 
	{
		super();
		
		if (stage != null) init();
		else addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
	}
	
	
	
	private function init():Void 
	{
		
	}
	
	public function update():Void 
	{
		
	}
	
	public function draw():Void 
	{
		
	}
	
	
	
	private function addedToStageHandler(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		init();
	}
	
}