return Def.ActorFrame{
	OnCommand=cmd(diffusealpha,.5);
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,65,64;customtexturerect,0,0,.5,1;texcoordvelocity,-.5,0);
		OnCommand=cmd(x,SCREEN_CENTER_X-38;y,SCREEN_CENTER_Y+125);
	};
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,2,64;customtexturerect,0,0,.5,1;texcoordvelocity,-.5,0;skewy,.1);
		OnCommand=cmd(x,SCREEN_CENTER_X-6;y,SCREEN_CENTER_Y+134);
	};
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,6,64;customtexturerect,0,0,.5,1;texcoordvelocity,.5,0;skewy,-.05);
		OnCommand=cmd(x,SCREEN_CENTER_X-74;y,SCREEN_CENTER_Y+130);
	};
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,72,64;customtexturerect,0,0,.5,1;texcoordvelocity,.5,0);
		OnCommand=cmd(x,SCREEN_CENTER_X-42;y,SCREEN_CENTER_Y+137);
	};
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,64,64;customtexturerect,0,0,.5,1;texcoordvelocity,-.5,0);
		OnCommand=cmd(x,SCREEN_CENTER_X-197;y,SCREEN_CENTER_Y+125);
	};
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,24,64;customtexturerect,0,0,.5,1;texcoordvelocity,-.5,0;skewy,-.08);
		OnCommand=cmd(x,SCREEN_CENTER_X-241;y,SCREEN_CENTER_Y+131);
	};
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,17,64;customtexturerect,0,0,.5,1;texcoordvelocity,.5,0;skewy,-.08);
		OnCommand=cmd(x,SCREEN_CENTER_X-173;y,SCREEN_CENTER_Y+131);
	};
	LoadActor("light")..{
		InitCommand=cmd(diffuse,color("#00B420");blend,'BlendMode_Add';zoomto,72,64;customtexturerect,0,0,.5,1;texcoordvelocity,.5,0);
		OnCommand=cmd(x,SCREEN_CENTER_X-218;y,SCREEN_CENTER_Y+137);
	};
}