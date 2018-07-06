return Def.ActorFrame{
	LoadActor( THEME:GetPathG("","Screens/Music") )..{ OnCommand=cmd(Center); },
	LoadActor( "title" )..{ OnCommand=cmd(Center;y,SCREEN_CENTER_Y-210;zoomy,1.15); },

	LoadFont("SelMusic")..{
		OnCommand=cmd(Center;y,SCREEN_CENTER_Y-180);
		RefreshCommand=function(self)
		local Mode = ToEnumShortString( GAMESTATE:GetPlayMode() )
			self:settext( THEME:GetString("GameStyles",Mode) )
		end;	
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};

	LoadFont("SelMusic")..{
		OnCommand=cmd(Center;y,SCREEN_CENTER_Y-160);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			self:settext( "" );
			if song then
				self:settext( song:GetGroupName() );
			end
		end;	
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};

	LoadActor("ArrowsMusic")..{
	OnCommand=function(self)
	self:animate(0):setstate(1):Center():zoom(1):zoomx(8.4)
	:SetTextureFiltering(false)
	end,
	},


	LoadActor("ArrowsMusic")..{
	OnCommand=function(self)
	self:animate(0):setstate(0):Center():x(SCREEN_CENTER_X-290)
	:SetTextureFiltering(false)
	end,
	},

	LoadActor("ArrowSelection")..{
	OnCommand=function(self)
	self:x(SCREEN_CENTER_X-303):y(SCREEN_CENTER_Y-110)
	:SetTextureFiltering(false)
	end,
	},

	LoadActor("ArrowSelection")..{
	OnCommand=function(self)
	self:x(SCREEN_CENTER_X-303):y(SCREEN_CENTER_Y+110):zoomy(-1)
	:SetTextureFiltering(false)
	end,
	},

	LoadActor("ArrowsMusic")..{
	OnCommand=function(self)
	self:animate(0):setstate(2):Center():x(SCREEN_CENTER_X+290)
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