return Def.ActorFrame{
	LoadFont("SelMusic")..{
		OnCommand=cmd(x,SCREEN_RIGHT-18;y,SCREEN_BOTTOM-65;horizalign,right;maxwidth,470);
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
	LoadFont("SelMusic")..{
		OnCommand=cmd(x,SCREEN_RIGHT-18;y,SCREEN_BOTTOM-50;horizalign,right;maxwidth,470);
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
	LoadActor("DiffList")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+238;y,SCREEN_BOTTOM-90)
	};
	LoadActor("CollectionText")..{ OnCommand=cmd(x,SCREEN_CENTER_X-165;y,SCREEN_CENTER_Y+173;SetTextureFiltering,false); },
	LoadActor("MusicText")..{ OnCommand=cmd(x,SCREEN_CENTER_X-187;y,SCREEN_CENTER_Y+194;SetTextureFiltering,false); },
}