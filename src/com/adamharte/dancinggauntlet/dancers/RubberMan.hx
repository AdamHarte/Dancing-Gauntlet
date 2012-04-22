package com.adamharte.dancinggauntlet.dancers;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class RubberMan extends Dancer
{
	public inline static var DANCER_NAME:String = 'rubber_man_dancer';
	

	public function new() 
	{
		dancerName = DANCER_NAME;
		//graphicsClass = assets.dancers.ARubberMan;
		gfx = new assets.dancers.ARubberMan();
		super();
	}
	
}