package assets.dancers;


import format.swf.symbol.Symbol;
import format.swf.MovieClip;
import format.SWF;
import nme.Assets;


class ARubberMan extends MovieClip {
	
	
	public function new () {
		
		if (!SWF.instances.exists ("libraries/dancing_gauntlet_assets.swf")) {
			
			SWF.instances.set ("libraries/dancing_gauntlet_assets.swf", new SWF (Assets.getBytes ("libraries/dancing_gauntlet_assets.swf")));
			
		}
		
		var swf = SWF.instances.get ("libraries/dancing_gauntlet_assets.swf");
		
		switch (swf.getSymbol (7)) {
			
			case spriteSymbol (data):
				
				super (data);
			
			default:
				
				super ();
			
		}
		
	}
	
	
}