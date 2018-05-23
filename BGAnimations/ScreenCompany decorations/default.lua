return Def.ActorFrame {
	LoadActor( "../konami_logo" )..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	LoadActor( "konami" )..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,0.468;diffusealpha,1;sleep,4.571;linear,0.25;diffusealpha,0);
	};
	LoadActor( "bemani" )..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,5.106;linear,0.467;diffusealpha,1;);
	};
};