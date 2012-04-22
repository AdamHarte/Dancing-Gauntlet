package com.adamharte.dancinggauntlet;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class GameState 
{
	public inline static var DANCE_FLOOR_WIDTH:Int = 13;
	public inline static var DANCE_FLOOR_HEIGHT:Int = 13;
	
	public var isPlaying:Bool;
	public var score:Int;
	
	public var danceFloor:Array<Array<Int>>;
	
	

	public function new() 
	{
		reset();
		
		
	}
	
	
	
	private function reset() 
	{
		isPlaying = false;
		score = 0;
		
		// Create new dance floor.
		danceFloor = [];
		for (i in 0...DANCE_FLOOR_HEIGHT) 
		{
			danceFloor[i] = [];
			for (j in 0...DANCE_FLOOR_WIDTH) 
			{
				danceFloor[i][j] = 0;
			}
		}
		
		
		
	}
	
}