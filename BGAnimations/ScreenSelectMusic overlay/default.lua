return Def.ActorFrame{
	LoadFont("ScreenSelectMusic song")..{
		OnCommand=cmd(x,SCREEN_RIGHT-18;y,SCREEN_BOTTOM-65;horizalign,right);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayMainTitle());
				self:diffuse(color("#F81191"));
			else
				self:settext("");
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};
	LoadFont("ScreenSelectMusic song")..{
		OnCommand=cmd(x,SCREEN_RIGHT-18;y,SCREEN_BOTTOM-50;horizalign,right);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplaySubTitle());
				self:diffuse(color("#F81191"));
			else
				self:settext("");
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};
}