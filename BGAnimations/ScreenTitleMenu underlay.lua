return Def.ActorFrame{
	LoadActor( THEME:GetPathG("","GameLogo") )..{
		OnCommand=cmd(FullScreen;diffuse,0.5,0.5,0.5,1);
	},

	LoadActor( THEME:GetPathG("Screens/TitleScreen/Pad","Warning") )..{
		OnCommand=cmd(Center;y,SCREEN_CENTER_Y+200);
	},

	Def.Quad{ OffCommand=cmd(FullScreen;diffuse,0,0,0,0;linear,1;diffusealpha,1); },
}