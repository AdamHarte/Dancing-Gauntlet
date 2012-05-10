package com.adamharte.dancinggauntlet.gui;
import com.adamharte.dancinggauntlet.events.GUIEvent;
import com.adamharte.dancinggauntlet.gui.ArrowButtons;
import nme.display.Sprite;
import nme.events.Event;
import nme.events.MouseEvent;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class PlaySceneGUI extends Sprite
{
	
	
	private var arrowButtons:ArrowButtons;
	//private var okButton:Sprite;

	public function new() 
	{
		super();
		
		if (stage != null) init();
		else addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
	}
	
	
	
	private function init():Void 
	{
		arrowButtons = new ArrowButtons();
		arrowButtons.x = 600;
		arrowButtons.y = 20;
		
		var okButton:Sprite = new assets.gui.AOkButton();
		okButton.x = 600;
		okButton.y = 300;
		
		addChild(arrowButtons);
		addChild(okButton);
		
		arrowButtons.addEventListener(GUIEvent.BUTTON_CLICK, arrowButtons_buttonClickHandler);
		okButton.addEventListener(MouseEvent.CLICK, okButton_buttonClickHandler);
	}
	
	
	
	private function addedToStageHandler(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		init();
	}
	
	private function arrowButtons_buttonClickHandler(e:GUIEvent):Void 
	{
		dispatchEvent(new GUIEvent(e.type, e.guiElement));
	}
	
	private function okButton_buttonClickHandler(e:MouseEvent):Void 
	{
		dispatchEvent(new GUIEvent(GUIEvent.BUTTON_CLICK, GUIEvent.OK_BUTTON));
	}
	
}