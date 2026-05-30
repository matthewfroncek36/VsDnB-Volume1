package graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.utils.Assets;

class RuntimeShader extends FlxRuntimeShader
{
	public function new(fragmentSource:String)
	{
		#if SHADERS_ENABLED
		var fragSource = Assets.getText(fragmentSource);
		#else
		var fragSource = '';
		#end

		super(fragSource, null, "120", "2");
	}
}