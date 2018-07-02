local gc = Var("GameCommand");
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	GainFocusCommand=cmd(diffusealpha,1);
	LoseFocusCommand=cmd(diffusealpha,0);
	LoadActor(THEME:GetPathG("_SelectIcon",gc:GetName() )) .. {};
};

return t