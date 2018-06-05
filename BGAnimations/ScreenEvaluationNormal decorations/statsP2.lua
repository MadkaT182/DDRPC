local t = Def.ActorFrame {};

local Combo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):MaxCombo();

local Marvelous = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W1"));
local Perfect = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W2"));
local Great = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W3"));
local Good = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W4"));
local Almost = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W5"));
local Ok = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetHoldNoteScores("HoldNoteScore_Held"));
local Ng = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetHoldNoteScores("HoldNoteScore_LetGo"));
local Boo = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_Miss"));

local MarvEnabled = PREFSMAN:GetPreference("AllowW1");
local MFix = -22;

--New record
--Personal
if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetPersonalHighScoreIndex() == 0) then
	NewRec1 = 1
end
--Machine
if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetMachineHighScoreIndex() == 0) then
	NewRec1 = 1
end

if MarvEnabled == "AllowW1_Everywhere" then
	--Marvelous--
	t[#t+1] = LoadFont("_resultNum")..{
		InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-312;addx,52;horizalign,right;);
		OnCommand=function(self)
			self:settextf(Marvelous);
		end;
	};
	t[#t+1] = LoadFont("_resultLbl")..{
		InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-312;addx,-216;horizalign,left;diffuse,color("#F86800"));
		OnCommand=function(self)
			self:settextf("MARVELOUS");
		end;
	};
else
	MFix = 0;
end;

t[#t+1] = LoadFont("_system1")..{
	Text="**EVALUATION";
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-307+MFix;addx,-215;diffuse,color("#0078F8");horizalign,left;zoom,.846);
};

--Perfect--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-290;addx,52;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Perfect);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-290;addx,-216;horizalign,left;diffuse,color("#F86800"));
	OnCommand=function(self)
		self:settextf("PERFECT");
	end;
};
--Great--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-268;addx,52;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Great);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-268;addx,-216;horizalign,left;diffuse,color("#F86800"));
	OnCommand=function(self)
		self:settextf("GREAT");
	end;
};
--Good--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-246;addx,52;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Good);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-246;addx,-216;horizalign,left;diffuse,color("#F86800"));
	OnCommand=function(self)
		self:settextf("GOOD");
	end;
};
--Boo--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-224;addx,52;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Almost);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-224;addx,-216;horizalign,left;diffuse,color("#F86800"));
	OnCommand=function(self)
		self:settextf("BOO");
	end;
};
--Miss--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-202;addx,52;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Boo);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-202;addx,-216;horizalign,left;diffuse,color("#F86800"));
	OnCommand=function(self)
		self:settextf("MISS");
	end;
};
t[#t+1] = LoadFont("_system1")..{
	Text="**DANCE LEVEL";
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-106;addx,-215;diffuse,color("#0078F8");horizalign,left;zoom,.846);
};
--Max Combo--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-180;addx,52;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Combo);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-180;addx,-216;horizalign,left;diffuse,color("#E00058"));
	OnCommand=function(self)
		self:settextf("MAX COMBO");
	end;
};
--Stage Stats
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-151;addx,-216;horizalign,left;diffuse,color("#F86800"));
	OnCommand=function(self)
		self:settextf("STAGE SCORE");
	end;
};
t[#t+1] = Def.RollingNumbers {
	File = THEME:GetPathF("", "_resultNum");
	InitCommand=cmd(x,-2;y,SCREEN_CENTER_Y-151;playcommand,"Set");
	SetCommand = function (self)
		local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
		self:Load("RollingNumbersEvaluation");
		self:targetnumber(score);
	end;
};
--Total stats
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-129;addx,-216;horizalign,left;diffuse,color("#F86800"));
	OnCommand=function(self)
		self:settextf("TOTAL SCORE");
	end;
};
t[#t+1] = Def.RollingNumbers {
	File = THEME:GetPathF("", "_resultNum");
	InitCommand=cmd(x,-2;y,SCREEN_CENTER_Y-129;playcommand,"Set");
	SetCommand = function (self)
		local score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
		self:Load("RollingNumbersEvaluation");
		self:targetnumber(score);
	end;
};

-- DDR PC Exclusive stuff
-- Dance Code
t[#t+1] = LoadFont("_system1")..{
	Text="*PASSWORD";
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-30;addx,-215;diffuse,color("#0078F8");horizalign,left;zoom,.846);
};

--Random codes ^_^
if ((NewRec1 == 1) and (GAMESTATE:IsHumanPlayer(PLAYER_2))) then
	t[#t+1] = Def.ActorFrame {
		LoadFont("_resultLbl") .. {
			InitCommand=cmd(y,SCREEN_CENTER_Y-6;addx,-216);
			OnCommand=function(self)
				self:horizalign(left);
				self:diffuse(color("#FFF700"));
				self:settext(code_line().."\n"..code_line());
			end;
		};
	}
end

return t;
