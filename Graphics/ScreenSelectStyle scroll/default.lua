local t = Def.ActorFrame {};
local gc = Var("GameCommand");

	t[#t+1] = LoadActor( "../TitleScroll Items/Row" )..{
		InitCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;linear,0.3;zoomy,1.1;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;linear,0.3;zoomy,0.8;diffusealpha,0);
		DisabledCommand=cmd(diffuse,0.5,0.5,0.5,1);
	};

	t[#t+1] = LoadActor( gc:GetName() );

return t;

-- return Def.ActorFrame{
-- 	MadeChoiceP1MessageCommand=cmd(playcommand,"GoOff");
-- 	MadeChoiceP2MessageCommand=cmd(playcommand,"GoOff");
-- 	GoOffCommand=function(self) self:linear(0.5); local bHasFocus=math.abs(self:GetZoomZ()-1.1)<0.01 if bHasFocus then self:x(0); self:y(0); self:glowblink(); self:sleep(0.5); self:linear(0.5); self:zoom(0); else self:x(0); self:y(0); self:z(0); self:zoom(0); end self:sleep(5) end,

-- 	LoadActor( gc:GetName() ),
-- }
