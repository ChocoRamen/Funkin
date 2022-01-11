package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class MenuCharacter extends FlxSprite
{
	public var character:String;

	public function new(x:Float, character:String = 'choc')
	{
		super(x);

		this.character = character;

		var tex = Paths.getSparrowAtlas('chocMenuDance');
		frames = tex;

		animation.addByPrefix('choc', "Choc menu dance idle", 24);
		// Parent Christmas Idle

		animation.play(character);
		updateHitbox();
	}
}
