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
	LoadActor("Style/left_player")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-197;y,SCREEN_CENTER_Y+35;blend,'BlendMode_Add');
	};
	LoadActor("Style/right_player")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+197;y,SCREEN_CENTER_Y+35;blend,'BlendMode_Add');
	};
	LoadActor("Style/4pad");
	LoadActor("Style/4pad")..{
		InitCommand=cmd(zoomx,-1;addx,SCREEN_WIDTH);
	};
};