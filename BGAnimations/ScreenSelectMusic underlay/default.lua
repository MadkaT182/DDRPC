return Def.ActorFrame{
	LoadActor( THEME:GetPathG("","Screens/Music") )..{ OnCommand=cmd(FullScreen); },
	LoadActor( "title" )..{ OnCommand=cmd(Center;y,SCREEN_CENTER_Y-210;zoomy,1.15); },

	LoadActor("ArrowsMusic")..{
	OnCommand=function(self)
	self:animate(0):setstate(1):Center():zoom(1):zoomx(8.4)
	:SetTextureFiltering(false)
	end,
	},


	LoadActor("ArrowsMusic")..{
	OnCommand=function(self)
	self:animate(0):setstate(0):Center():x(SCREEN_CENTER_X-290):zoom(1)
	:SetTextureFiltering(false)
	end,
	},

	LoadActor("ArrowsMusic")..{
	OnCommand=function(self)
	self:animate(0):setstate(2):Center():x(SCREEN_CENTER_X+290):zoom(1)
	:SetTextureFiltering(false)
	end,
	},

	Def.ActorFrame{
	OnCommand=cmd(Center;x,SCREEN_CENTER_X-170);
		LoadActor("GroupListing")..{ OnCommand=function(self) end, },
		LoadFont("SelMusic")..{
		OnCommand=cmd();
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetGroupName());
				self:diffuse(color("#F8BC00"));
				self:diffusetopedge(color("#F8BC00"))
				self:diffusebottomedge(color("#F8BC00"))
				self:maxwidth(150)
			else
				self:settext("");
			end
		end;	
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};
	},
}