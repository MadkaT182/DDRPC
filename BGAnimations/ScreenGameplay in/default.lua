return Def.ActorFrame{
	LoadActor("../_stars/OpenL")..{
		OnCommand=cmd(x,SCREEN_WIDTH*1.5;linear,1.466;x,-SCREEN_WIDTH);
	};
	LoadActor("../_stars/OpenR")..{
		OnCommand=cmd(x,-SCREEN_WIDTH*.5;linear,1.466;x,SCREEN_WIDTH*1.6);
	};
};