package com.adamharte.dancinggauntlet.scenes;
import com.adamharte.dancinggauntlet.GameState;
import flash.display.Sprite;
import nme.Assets;
//import nme.Assets;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class ScenePlay extends SceneBase
{
	public static var SCENE_NAME:String = 'play_scene';
	
	private var gameState:GameState;
	
	private var danceFloor:Sprite;
	

	public function new() 
	{
		sceneName = SCENE_NAME;
		super();
	}
	
	override private function init():Void 
	{
		super.init();
		
		gameState = new GameState();
		
		//Setup dance floor
		danceFloor = new Sprite();
		danceFloor.x = 20;
		danceFloor.y = 20;
		addChild(danceFloor);
		var tileSize:Int = 30;
		for (i in 0...GameState.DANCE_FLOOR_HEIGHT) 
		{
			for (j in 0...GameState.DANCE_FLOOR_WIDTH) 
			{
				var floorTile:Sprite = new assets.AFloorTile();
				floorTile.x = j * tileSize;
				floorTile.y = i * tileSize;
				floorTile.width = floorTile.height = tileSize;
				danceFloor.addChild(floorTile);
			}
		}
		
		
	}
	
	
	
	override public function update():Void 
	{
		super.update();
		
		
	}
	
	override public function draw():Void 
	{
		super.draw();
		
		
	}
	
}