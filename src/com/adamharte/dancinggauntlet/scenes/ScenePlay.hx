package com.adamharte.dancinggauntlet.scenes;
import com.adamharte.dancinggauntlet.dancers.Dancer;
import com.adamharte.dancinggauntlet.events.GUIEvent;
import com.adamharte.dancinggauntlet.GameState;
import com.adamharte.dancinggauntlet.gui.ArrowButtons;
import com.adamharte.dancinggauntlet.gui.PlaySceneGUI;
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
	private var guiLayer:PlaySceneGUI;
	private var arrowButtons:Sprite;
	private var okButton:Sprite;
	

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
		
		guiLayer = new PlaySceneGUI();
		addChild(guiLayer);
		guiLayer.addEventListener(GUIEvent.BUTTON_CLICK, guiLayer_buttonClickHandler);
		
		
		
		
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
		if (gameState.currentState == State.INVALID) return;
		
		
		// Render the gameboard.
		var dancer:Dancer;
		for (i in 0...GameState.DANCE_FLOOR_HEIGHT) 
		{
			for (j in 0...GameState.DANCE_FLOOR_WIDTH) 
			{
				if (gameState.dancers[i] != null && gameState.dancers[i][j] != null) 
				{
					dancer = gameState.dancers[i][j];
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
		startTurn();
	}
	
	public function startTurn():Void 
	{
		// Ask what direction the user wants to go in, and what move they want to go.
		// On btn click, run all players moves.
		// Then calculate who the player will enter dance-battle with (Maybe keep it to one-on-one battles for now).
		// Start dance battle sequence.
		// Winner moves, loser stays still (Maybe loser can't battle ).
		
		
		
		changeState(State.DIRECTION_SELECT);
	}
	
	
	
	private function changeState(newState:State):Void 
	{
		var previousState:State = gameState.currentState;
		gameState.currentState = newState;
		
		var success:Bool = true;
		
		switch (previousState) 
		{
			case State.INVALID:
				switch (newState) 
				{
					case State.SETUP:
						
					default:
						success = false;
				}
			case State.SETUP:
				switch (newState) 
				{
					case State.SETUP:
						
					case State.DIRECTION_SELECT:
						
					case State.AI_DIRECTION_SELECT:
						
					case State.MOVE_SELECT:
						
					case State.BATTLE:
						
					case State.MOVE:
						
					case State.WIN:
						
					default:
						success = false;
				}
			case State.DIRECTION_SELECT:
				switch (newState) 
				{
					case State.SETUP:
						//TODO: Restart level.
					case State.AI_DIRECTION_SELECT:
						
					default:
						success = false;
				}
			case State.AI_DIRECTION_SELECT:
				switch (newState) 
				{
					case State.SETUP:
						//TODO: Restart level.
					case State.MOVE_SELECT:
						
					default:
						success = false;
				}
			case State.MOVE_SELECT:
				switch (newState) 
				{
					case State.SETUP:
						//TODO: Restart level.
					case State.BATTLE:
						
					case State.MOVE:
						//not sure if this can happen yet
					default:
						success = false;
				}
			case State.BATTLE:
				switch (newState) 
				{
					case State.SETUP:
						//TODO: Restart level.
					case State.MOVE:
						
					default:
						success = false;
				}
			case State.MOVE:
				switch (newState) 
				{
					case State.SETUP:
						//TODO: Restart level.
					case State.DIRECTION_SELECT:
						
					case State.WIN:
						
					default:
						success = false;
				}
			case State.WIN:
				switch (newState) 
				{
					case State.SETUP:
						//TODO: Restart level? or go to next?
					default:
						success = false;
				}
			default:
				success = false;
		}
		
		if (!success) 
		{
			gameState.currentState = previousState;
		}
	}
	
	
	
	private function guiLayer_buttonClickHandler(e:GUIEvent):Void 
	{
		trace(e.guiElement);
		//TODO: Select what direction the player will try to move in.
		switch (e.guiElement) 
		{
			case GUIEvent.UP_ARROW_BUTTON:
				
			case GUIEvent.DOWN_ARROW_BUTTON:
				
			case GUIEvent.LEFT_ARROW_BUTTON:
				
			case GUIEvent.RIGHT_ARROW_BUTTON:
				
			case GUIEvent.OK_BUTTON:
				okButton_buttonClickHandler(e);
			default:
				
		}
		
		//TODO: Show dance moves options
		///// assets.gui.ADanceMovesButtons
		
		
	}
	
	private function okButton_buttonClickHandler(e:GUIEvent):Void 
	{
		// Advance to next state.
		//runAIDirectionSelect();
		
		switch (gameState.currentState) 
		{
			case State.DIRECTION_SELECT:
				//TODO: If direction selected, move to next state.
			case State.MOVE_SELECT:
				//TODO: If dance-move selected, move to next state.
			case State.BATTLE:
				//TODO: Skips or speeds up the dance-battle animations, and moves to next state.
			case State.MOVE:
				//TODO: Skips or speeds up the moving animations, and moves to next state.
			case State.WIN:
				//TODO: Goes to next level.
			default:
				
		}
		
	}
	
	
}