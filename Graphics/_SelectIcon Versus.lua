return Def.ActorFrame {
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+57);
		LoadActor("Style/Icon_versus")..{
			InitCommand=cmd(x,2);
		};
		LoadActor("Style/scrollNorm")..{
			Condition=not IsUsingWideScreen();
		};
		LoadActor("Style/scrollWide")..{
			Condition=IsUsingWideScreen();
		};
	};
};