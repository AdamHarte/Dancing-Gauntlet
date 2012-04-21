package com.adamharte.dancinggauntlet;

import nme.display.StageAlign;
import nme.display.StageScaleMode;
import nme.Lib;

/**
 * ...
 * @author Adam Harte (adam@adamharte.com)
 */

class Main 
{
	
	static public function main() 
	{
		Lib.current.addChild(new DancingGauntlet());
	}
	
}