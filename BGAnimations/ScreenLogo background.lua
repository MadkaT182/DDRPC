return Def.ActorFrame{
	LoadActor( THEME:GetPathG("","GameLogo") )..{
		OnCommand=cmd(FullScreen);
	}
}