package com.adamharte.dancinggauntlet.scenes;
import com.adamharte.dancinggauntlet.dancers.Dancer;
import com.adamharte.dancinggauntlet.events.GUIEvent;
import com.adamharte.dancinggauntlet.GameState;
import com.adamharte.dancinggauntlet.gui.ArrowButtons;
import flash.display.Sprite;
import nme.Assets;
//import nme.Assets;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class ScenePlay extends SceneBase
{
	public inline static var SCENE_NAME:String = 'play_scene';
	
	private var gameState:GameState;
	
	private var danceFloorLayer:Sprite;
	private var dancersLayer:Sprite;
	

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
		danceFloorLayer = new Sprite();
		danceFloorLayer.x = 20;
		danceFloorLayer.y = 20;
		addChild(danceFloorLayer);
		for (i in 0...GameState.DANCE_FLOOR_HEIGHT) 
		{
			for (j in 0...GameState.DANCE_FLOOR_WIDTH) 
			{
				var floorTile:Sprite = new assets.AFloorTile();
				floorTile.x = j * GameState.TILE_SIZE;
				floorTile.y = i * GameState.TILE_SIZE;
				floorTile.width = floorTile.height = GameState.TILE_SIZE;
				danceFloorLayer.addChild(floorTile);
			}
		}
		
		dancersLayer = new Sprite();
		dancersLayer.x = danceFloorLayer.x;
		dancersLayer.y = danceFloorLayer.y;
		addChild(dancersLayer);
		
		var arrowButtons:Sprite = new ArrowButtons();
		arrowButtons.x = 600;
		arrowButtons.y = 20;
		addChild(arrowButtons);
		arrowButtons.addEventListener(GUIEvent.BUTTON_CLICK, arrowButtons_buttonClickHandler);
		
		
		startGame();
	}
	
	
	
	override public function update():Void 
	{
		super.update();
		
		// 
		
	}
	
	override public function draw():Void 
	{
		super.draw();
		if (gameState.currentState != GameState.STATE_PLAYING) return;
		
		
		// Render the gameboard.
		
		for (i in 0...GameState.DANCE_FLOOR_HEIGHT) 
		{
			for (j in 0...GameState.DANCE_FLOOR_WIDTH) 
			{
				if (gameState.dancers[i] != null && gameState.dancers[i][j] != null) 
				{
					var dancer:Dancer = gameState.dancers[i][j];
					dancer.x = j * GameState.TILE_SIZE;
					dancer.y = i * GameState.TILE_SIZE;
					dancer.width = dancer.height = GameState.TILE_SIZE;
					dancersLayer.addChild(dancer);
				}
				
				
			}
		}
		
		
		
		
	}
	
	public function startGame():Void 
	{
		gameState.currentState = GameState.STATE_PLAYING;
		
		startTurn();
	}
	
	public function startTurn():Void 
	{
		// Ask what direction the user wants to go in, and what move they want to go.
		// On btn click, run all players moves.
		// Then calculate who the player will enter dance-battle with (Maybe keep it to one-on-one battles for now).
		// Start dance battle sequence.
		// Winner moves, loser stays still (Maybe loser can't battle ).
		
	}
	
	
	
	
	
	private function arrowButtons_buttonClickHandler(e:GUIEvent):Void 
	{
		//TODO: Select what direction the player will try to move in.
		switch (e.guiElement) 
		{
			case GUIEvent.UP_ARROW_BUTTON:
				
			case GUIEvent.DOWN_ARROW_BUTTON:
				
			case GUIEvent.LEFT_ARROW_BUTTON:
				
			case GUIEvent.RIGHT_ARROW_BUTTON:
				
			default:
				
		}
		
		//TODO: Show dance moves options
		///// assets.gui.ADanceMovesButtons
		
		
	}
	
	
}