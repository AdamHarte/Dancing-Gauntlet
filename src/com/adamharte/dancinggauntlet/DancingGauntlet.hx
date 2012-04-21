package com.adamharte.dancinggauntlet;
import nme.display.StageAlign;
import nme.display.StageQuality;
import nme.display.StageScaleMode;
import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class DancingGauntlet extends Sprite
{

	public function new() 
	{
		super();
		
		if (stage != null) init();
		else addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(?e:Event = null):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		
		initStage();
		
		this.addEventListener(Event.ENTER_FRAME, enterFrameHandler);
	}
	
	
	
	private function initStage() 
	{
		var stage = Lib.current.stage;
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
	}
	
	
	
	private function enterFrameHandler(e:Event):Void 
	{
		
	}
	
	
}