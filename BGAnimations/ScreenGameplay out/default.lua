return Def.ActorFrame{
	LoadActor("../_stars/CloseL")..{
		OnCommand=cmd(x,-SCREEN_WIDTH*.5;linear,1.266;x,SCREEN_WIDTH*1.6;sleep,2);
	};
	LoadActor("../_stars/CloseR")..{
		OnCommand=cmd(x,SCREEN_WIDTH*1.5;linear,1.266;x,-SCREEN_WIDTH/2;sleep,2);
	};
	LoadActor("cleared")..{
		OnCommand=cmd(Center;cropbottom,1;sleep,.866;linear,.567;cropbottom,0;sleep,1;linear,.7;diffusealpha,0;sleep,1.667);
	};
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-60;zoomto,0,0;sleep,.866;zoomto,460,32;diffuse,color("#000000");fadetop,.5;linear,.577;y,SCREEN_CENTER_Y+71);
	};
	StandardDecorationFromFile("ScoreFrame","ScoreFrame");
	LoadFont("ScoreDisplayNormal Text")..{
		InitCommand=cmd(player,PLAYER_1;x,THEME:GetMetric("ScreenGameplay","ScoreP1X");y,THEME:GetMetric("ScreenGameplay","ScoreP1Y"));
		StartTransitioningCommand=cmd(settext,string.format("% 9d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore()));
	};
	LoadFont("ScoreDisplayNormal Text")..{
		InitCommand=cmd(player,PLAYER_2;x,THEME:GetMetric("ScreenGameplay","ScoreP2X");y,THEME:GetMetric("ScreenGameplay","ScoreP2Y"));
		StartTransitioningCommand=cmd(settext,string.format("% 9d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore()));
	};
};