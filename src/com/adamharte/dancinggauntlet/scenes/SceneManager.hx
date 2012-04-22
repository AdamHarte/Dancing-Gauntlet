package com.adamharte.dancinggauntlet.scenes;
import nme.display.Sprite;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class SceneManager extends Sprite
{
	private var currentScene:SceneBase;
	

	public function new() 
	{
		super();
	}
	
	
	
	public function update():Void 
	{
		if (currentScene == null) return;
		
		currentScene.update();
	}
	
	public function draw():Void 
	{
		if (currentScene == null) return;
		
		currentScene.draw();
	}
	
	public function changeScene(sceneName:String):Void 
	{
		//TODO: Remove old scene.
		
		
		//TODO: Add new scene (Create if needed).
		switch (sceneName) 
		{
			case ScenePlay.SCENE_NAME:
				currentScene = new ScenePlay();
			default:
				trace('ERROR: Unknown Scene');
		}
		
		if (currentScene != null) 
		{
			addChild(currentScene);
		}
		
	}
	
	
	
}