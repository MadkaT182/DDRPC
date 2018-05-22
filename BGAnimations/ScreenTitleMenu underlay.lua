return Def.ActorFrame{
	LoadActor( THEME:GetPathG("","GameLogo") )..{ OnCommand=cmd(FullScreen;diffuse,0.5,0.5,0.5,1); },
}