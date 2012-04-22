package com.adamharte.dancinggauntlet.dancers;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class Player extends Dancer
{
	public inline static var DANCER_NAME:String = 'player_dancer';
	

	public function new() 
	{
		dancerName = DANCER_NAME;
		//graphicsClass = assets.dancers.APlayer;
		gfx = new assets.dancers.APlayer();
		super();
	}
}