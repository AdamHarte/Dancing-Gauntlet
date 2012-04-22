package com.adamharte.dancinggauntlet.events;
import nme.events.Event;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class GUIEvent extends Event
{
	public inline static var BUTTON_CLICK:String = 'button_click';
	
	public inline static var UP_ARROW_BUTTON:String = 'up_arrow_button';
	public inline static var DOWN_ARROW_BUTTON:String = 'down_arrow_button';
	public inline static var LEFT_ARROW_BUTTON:String = 'left_arrow_button';
	public inline static var RIGHT_ARROW_BUTTON:String = 'right_arrow_button';
	
	public var guiElement:String;
	

	public function new(type:String, guiElement:String, bubbles:Bool = false, cancelable:Bool = false) 
	{
		this.guiElement = guiElement;
		super(type, bubbles, cancelable);
	}
	
}