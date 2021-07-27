package;

import Controls.Control;
import flixel.FlxState;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxSubState;
import flixel.addons.text.FlxTypeText;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxSprite;

class EndSceneState extends MusicBeatState
{
	override public function create()
	{
        var end:FlxSprite = new FlxSprite(0, 0).loadGraphic('assets/images/menuDesat.png');
		end.color = 0xab0f0f;
		end.antialiasing = true;
		add(end);
		trace("BG LOADED");
		var endText:FlxText = new FlxText(0, 0, 650, "End of Demo\nGet ready for full release!\n\nFeatures:\n\nNew Custom Notes\nMore Songs\nBackgrounds and Character Sprites\nMore Secrets...", 32);
		endText.screenCenter();
		endText.font = 'Funkin';
		endText.color = 0xffffff;
		add(endText);
		var coolText:FlxText = new FlxText(FlxG.width - 270, FlxG.height - 42, 650, "There's someone waiting in the files...\nBest to not keep him for long...", 16);
		coolText.font = 'Funkin';
		coolText.color = 0xffffff;
		add(coolText);
		trace("TEXT LOADED");
		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (controls.ACCEPT)
            {
				trace("ENTER PRESSED");

                FlxG.sound.playMusic("assets/music/freakyMenu.ogg");

				FlxG.switchState(new MainMenuState());
            }
		super.update(elapsed);
	}
}
