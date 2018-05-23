return Def.ActorFrame {
	LoadActor("../konami_logo")..{
		OnCommand=cmd(sleep,5.605;queuecommand,"Play");
		PlayCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.White);
	};
	LoadActor( "xax" )..{
		InitCommand=cmd(Center;sleep,4.204;decelerate,0.3;diffusealpha,0);
	};
	LoadActor( "konami" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,5.605;decelerate,0.3;diffusealpha,1;sleep,4.171;decelerate,0.3;diffusealpha,0);
	};
	LoadActor( "bemani" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,10.177;decelerate,0.3;diffusealpha,1;sleep,4.237;decelerate,0.3;diffusealpha,0);
	};
}