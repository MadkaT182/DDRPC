local t = Def.ActorFrame {};

t[#t+1] = LoadFont("_system0")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-10);
	OnCommand=function(self)
		self:diffusealpha(0);
		self:settext("WARNING\n\nTHIS GAME IS FOR SALE AND\nUSE IN JAPAN ONLY.\nTHE COPYRIGHTED\nMUSIC/CHARACTERS/ART WORK\nIN THIS GAME ARE\nSEPARATELY OWNED BY THE AUTHORS.\nTHE PUBLIC PERFORMANCE\nOF THIS GAME\nOUTSIDE THIS TERRITORY IS\nPROHIBITED BY LAW AND\nVIOLATORS ARE SUBJECT TO\nSEVERE PENALTIES UNLESS\nSPECIALLY AUTHORIZED BY KONAMI.\n\n\n(c)1998,1999 KONAMI\n\nALL RIGHTS RESERVED.");
		self:linear(1.502);
		self:diffusealpha(1);
	end;
};

return t