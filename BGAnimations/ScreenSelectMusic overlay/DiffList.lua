--Difficulty list
local t = Def.ActorFrame{
	LoadActor("Frame");
};

local function GetDifListX(self,pn,offset,fade)
	if pn==PLAYER_1 then
		self:x(SCREEN_CENTER_X);
		if fade>0 then
			self:faderight(fade);
		end;
	end;
	return r;
end;

local function DrawDifList(pn,diff)
	return Def.ActorFrame {
		--InitCommand=cmd(player,pn;y,SCREEN_CENTER_Y-18);
		--OnCommand=cmd(addx,SCREEN_WIDTH;decelerate,0.5;addx,-SCREEN_WIDTH);
--meter
	LoadFont("_system1")..{
		InitCommand=cmd(zoom,0.9;halign,0);
		SetCommand=function(self)
		local st=GAMESTATE:GetCurrentStyle():GetStepsType();
		local song=GAMESTATE:GetCurrentSong();
		local course = GAMESTATE:GetCurrentCourse();
		if song then
			--GetDifListX(self,pn,110,0);
			if song:HasStepsTypeAndDifficulty(st,diff) then
			local steps = song:GetOneSteps( st, diff );
				self:settext(steps:GetMeter());
			else
				self:settext("");
			end;
		end;
		end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	};
	};
end;

t[#t+1]=DrawDifList(PLAYER_1,'Difficulty_Easy')..{
	OnCommand=cmd(x,-24;diffuse,color("#EFE600"));
};
t[#t+1]=DrawDifList(PLAYER_1,'Difficulty_Medium')..{
	OnCommand=cmd(x,7;diffuse,color("#f80000"))
};
t[#t+1]=DrawDifList(PLAYER_1,'Difficulty_Hard')..{
	OnCommand=cmd(x,37;diffuse,color("#08DE18"));
};

return t;