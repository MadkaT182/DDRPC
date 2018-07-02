return Def.ActorFrame {
	LoadActor("stylebg")..{
		OnCommand=cmd(Center);
	};
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+3;y,29)
	};
}