package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class MenuCharacter extends FlxSprite
{
	public var character:String;

	public function new(x:Float, character:String = 'dad')
	{
		super(x);

		this.character = character;

		var tex = Paths.getSparrowAtlas('chocMenuDance');
		frames = tex;

		animation.addByPrefix('dad', "Choc menu dance idle", 24);
		// Parent Christmas Idle

		animation.play(character);
		updateHitbox();
	}
}
