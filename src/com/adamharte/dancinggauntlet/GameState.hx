package com.adamharte.dancinggauntlet;
import com.adamharte.dancinggauntlet.dancers.Dancer;
import com.adamharte.dancinggauntlet.dancers.Player;
import com.adamharte.dancinggauntlet.dancers.RubberMan;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

enum State 
{
	INVALID;
	SETUP;
	DIRECTION_SELECT;
	AI_DIRECTION_SELECT;
	MOVE_SELECT;
	BATTLE;
	MOVE;
	WIN;
}

class GameState 
{
	public inline static var DANCE_FLOOR_WIDTH:Int = 13;
	public inline static var DANCE_FLOOR_HEIGHT:Int = 11;
	public inline static var TILE_SIZE:Int = 30;
	
	public inline static var DANCER_ID_NONE:Int 		= 0;
	public inline static var DANCER_ID_PLAYER:Int 		= 1;
	public inline static var DANCER_ID_RUBBER_MAN:Int 	= 2;
	
	//public inline static var STATE_INVALID:Int 		= 0;
	//public inline static var STATE_DIRECTION_SELECT:Int 		= 1;
	//public inline static var STATE_AI_DIRECTION_SELECT:Int 		= 2;
	//public inline static var STATE_MOVE_SELECT:Int 		= 3;
	//public inline static var STATE_AI_MOVE_SELECT:Int 		= 4;
	//public inline static var STATE_BATTLE:Int 		= 5;
	//public inline static var STATE_MOVE:Int 		= 6;
	//public inline static var STATE_WIN:Int 		= 7;
	
	public var currentState:State;
	public var score:Int;
	public var player:Player;
	
	public var danceFloor:Array<Array<Int>>;
	public var dancers:Array<Array<Dancer>>;
	
	

	public function new() 
	{
		reset();
		
		
	}
	
	
	
	private function reset() 
	{
		currentState = State.INVALID;
		score = 0;
		
		// Create new dance floor.
		/*danceFloor = [];
		for (i in 0...DANCE_FLOOR_HEIGHT) 
		{
			danceFloor[i] = [];
			for (j in 0...DANCE_FLOOR_WIDTH) 
			{
				danceFloor[i][j] = 0;
			}
		}*/
		
		danceFloor = [
			[0,0,0,0,0,0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0,0,0,0,0,0],
			[0,0,2,0,0,0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,1,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0,0,0,2,0,0],
			[0,0,0,0,0,0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0,0,0,0,0,0],
			[0,2,0,0,0,0,0,0,0,0,0,0,0]
		];
		loadLevel(danceFloor);
		
	}
	
	
	
	public function loadLevel(danceFloor):Void 
	{
		dancers = [];
		for (i in 0...DANCE_FLOOR_HEIGHT) 
		{
			dancers[i] = [];
			for (j in 0...DANCE_FLOOR_WIDTH) 
			{
				var newDancer:Dancer = null;
				switch (danceFloor[i][j]) 
				{
					case DANCER_ID_PLAYER:
						player = new Player();
						newDancer = player;
					case DANCER_ID_RUBBER_MAN:
						newDancer = new RubberMan();
					default:
				}
				if (newDancer != null) 
				{
					newDancer.indexX = j;
					newDancer.indexY = i;
					dancers[i][j] = newDancer;
				}
			}
		}
	}
	
}