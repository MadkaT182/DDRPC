function MusicCheck(self)
	if GAMESTATE:GetCurrentSong() then
		self:settext( string.upper( GAMESTATE:GetCurrentSong():GetDisplayMainTitle() ) )
	else
		self:settext("")
	end
end

return Def.ActorFrame{
	LoadActor( THEME:GetPathG("","Screens/Music") )..{ OnCommand=cmd(FullScreen); },
	LoadActor( "title" )..{ OnCommand=cmd(Center;y,SCREEN_CENTER_Y-210;zoomy,1.15); },
	Def.BitmapText{
	Font="SelMusic",
	InitCommand=cmd(x,SCREEN_CENTER_X+295;y,SCREEN_CENTER_Y+175;horizalign,right;diffuse,1,0,0.4,1);
	OnCommand=function(self) MusicCheck(self) end,
	CurrentSongChangedMessageCommand=function(self) MusicCheck(self) end,
	},
}