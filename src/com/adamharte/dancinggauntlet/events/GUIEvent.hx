package com.adamharte.dancinggauntlet.events;
import nme.events.Event;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class GUIEvent extends Event
{
	static public inline var BUTTON_CLICK:String = 'button_click';
	
	static public inline var UP_ARROW_BUTTON:String = 'upArrowButton';
	static public inline var DOWN_ARROW_BUTTON:String = 'downArrowButton';
	static public inline var LEFT_ARROW_BUTTON:String = 'leftArrowButton';
	static public inline var RIGHT_ARROW_BUTTON:String = 'rightArrowButton';
	static public inline var OK_BUTTON:String = "okButton";
	
	public var guiElement:String;
	

	public function new(type:String, guiElement:String, bubbles:Bool = false, cancelable:Bool = false) 
	{
		this.guiElement = guiElement;
		super(type, bubbles, cancelable);
	}
	
}