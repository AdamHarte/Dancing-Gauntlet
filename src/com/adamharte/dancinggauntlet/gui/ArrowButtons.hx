package com.adamharte.dancinggauntlet.gui;
import com.adamharte.dancinggauntlet.events.GUIEvent;
import nme.display.MovieClip;
import nme.display.Sprite;
import nme.events.Event;
import nme.events.MouseEvent;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class ArrowButtons extends Sprite
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
		var arrowButtons:Sprite = new assets.gui.AArrowButtons();
		addChild(arrowButtons);
		arrowButtons.addEventListener(MouseEvent.CLICK, arrowButtons_clickHandler);
		
	}
	
	
	
	private function addedToStageHandler(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		init();
	}
	
	private function arrowButtons_clickHandler(e:MouseEvent):Void 
	{
		var guiElement:String = '';
		switch (e.target.name) 
		{
			case 'left_btn':
				guiElement = GUIEvent.LEFT_ARROW_BUTTON;
			case 'right_btn':
				guiElement = GUIEvent.RIGHT_ARROW_BUTTON;
			case 'up_btn':
				guiElement = GUIEvent.UP_ARROW_BUTTON;
			case 'down_btn':
				guiElement = GUIEvent.DOWN_ARROW_BUTTON;
			default:
				
		}
		dispatchEvent(new GUIEvent(GUIEvent.BUTTON_CLICK, guiElement));
	}
	
}