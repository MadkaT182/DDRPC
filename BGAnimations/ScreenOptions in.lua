return Def.ActorFrame {
	--Black overlay
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.Black;zoomtoheight,SCREEN_HEIGHT/1.5;sleep,0.5;linear,0.5;cropleft,1);
	};

	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.Black;linear,0.5;cropright,1);
	};
};