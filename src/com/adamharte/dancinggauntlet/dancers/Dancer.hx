package com.adamharte.dancinggauntlet.dancers;
import nme.display.Sprite;
import nme.events.Event;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class Dancer extends Sprite
{
	public var dancerName:String;
	public var indexX:Int;
	public var indexY:Int;
	//public var graphicsClass:Class;
	
	private var gfx:Sprite;
	

	public function new() 
	{
		super();
		
		if (stage != null) init();
		else addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
	}
	
	
	
	private function init():Void 
	{
		//gfx = new graphicsClass();
		addChild(gfx);
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