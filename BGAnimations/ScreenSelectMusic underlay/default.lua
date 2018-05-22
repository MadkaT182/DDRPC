return Def.ActorFrame{
	LoadActor( THEME:GetPathG("","Screens/Music") )..{ OnCommand=cmd(FullScreen); },
	LoadActor( "title" )..{ OnCommand=cmd(Center;y,SCREEN_CENTER_Y-210;zoomy,1.15); },
}