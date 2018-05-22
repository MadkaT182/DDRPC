local t = Def.ActorFrame{};


t[#t+1] = Def.ActorFrame{
	Def.Banner{
		Name="BannerWheel";
		InitCommand=cmd(scaletoclipped,190,55;rotationz,-45;addy,-2);
		SetMessageCommand=function(self,params)
			local song = params.Song;
			if song then
				self:LoadFromSong(song);
			else
				self:Load( THEME:GetPathG("Common fallback","banner"));
			end;
		end;
	};
};

return t;
