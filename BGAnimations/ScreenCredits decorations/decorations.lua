local t = Def.ActorFrame{};

--Params
local ZoomMin = .2;
local ZoomMax = 1.6;
local SeedDance = 10;
local SeedArrow = 10;
local DistanceMin = 10;
local DistanceMax = 20;
local ArrowDistMin = 7;
local ArrowDistMax = 14;
local TotTime = 14;
local NumDance = math.random(SeedDance*.5,SeedDance);
local NumArrow = math.random(SeedArrow*.5,SeedArrow);

--LtoR
for i=1,NumDance do
	t[#t+1] = Def.ActorFrame{
		LoadActor("dance")..{
			InitCommand=cmd(diffusealpha,.5;zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_LEFT+(math.random(-SCREEN_WIDTH,SCREEN_WIDTH));y,math.random(SCREEN_HEIGHT);linear,math.random(DistanceMin,DistanceMax);x,SCREEN_RIGHT+SCREEN_WIDTH/2;queuecommand,"Repeat");
			RepeatCommand=cmd(sleep,math.random(0,TotTime*.1);queuecommand,"Loop");
			LoopCommand=cmd(diffusealpha,.5;zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_LEFT-SCREEN_WIDTH;y,math.random(SCREEN_HEIGHT);linear,math.random(DistanceMin,DistanceMax);x,SCREEN_RIGHT+SCREEN_WIDTH/2;queuecommand,"Repeat");
		};
	};
end

--RtoL
for i=1,NumDance do
	t[#t+1] = Def.ActorFrame{
		LoadActor("dance")..{
			InitCommand=cmd(diffusealpha,.5;zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_RIGHT-(math.random(-SCREEN_WIDTH,SCREEN_WIDTH));y,math.random(SCREEN_HEIGHT);linear,math.random(DistanceMin,DistanceMax);x,SCREEN_LEFT-SCREEN_WIDTH/2;queuecommand,"Repeat");
			RepeatCommand=cmd(sleep,math.random(0,TotTime*.1);queuecommand,"Loop");
			LoopCommand=cmd(diffusealpha,.5;zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_RIGHT+SCREEN_WIDTH;y,math.random(SCREEN_HEIGHT);linear,math.random(DistanceMin,DistanceMax);x,SCREEN_LEFT-SCREEN_WIDTH/2;queuecommand,"Repeat");
		};
	};
end

--UtoD
for i=1,NumArrow do
	t[#t+1] = Def.ActorFrame{
		LoadActor("arrow")..{
			InitCommand=cmd(diffusealpha,.5;rotationz,(90*math.random(1,4));zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_LEFT+(math.random(SCREEN_WIDTH));y,math.random(-SCREEN_TOP,SCREEN_BOTTOM);linear,math.random(ArrowDistMin,ArrowDistMax);y,SCREEN_BOTTOM+SCREEN_HEIGHT/2;queuecommand,"Repeat");
			RepeatCommand=cmd(sleep,math.random(0,TotTime*.1);queuecommand,"Loop");
			LoopCommand=cmd(diffusealpha,.5;rotationx,(90*math.random(1,4));zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_LEFT+(math.random(SCREEN_WIDTH));y,SCREEN_TOP-SCREEN_HEIGHT/2;linear,math.random(ArrowDistMin,ArrowDistMax);y,SCREEN_BOTTOM+SCREEN_HEIGHT/2;queuecommand,"Repeat");
		};
	};
end

--DtoU
for i=1,NumArrow do
	t[#t+1] = Def.ActorFrame{
		LoadActor("arrow")..{
			InitCommand=cmd(diffusealpha,.5;rotationz,(90*math.random(1,4));zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_LEFT+(math.random(SCREEN_WIDTH));y,math.random(-SCREEN_TOP,SCREEN_BOTTOM);linear,math.random(ArrowDistMin,ArrowDistMax);y,SCREEN_TOP-SCREEN_HEIGHT/2;queuecommand,"Repeat");
			RepeatCommand=cmd(sleep,math.random(0,TotTime*.1);queuecommand,"Loop");
			LoopCommand=cmd(diffusealpha,.5;rotationz,(90*math.random(1,4));zoom,math.random(ZoomMin*1000,ZoomMax*1000)/1000;x,SCREEN_LEFT+(math.random(SCREEN_WIDTH));y,SCREEN_BOTTOM+SCREEN_HEIGHT/2;linear,math.random(ArrowDistMin,ArrowDistMax);y,SCREEN_TOP-SCREEN_HEIGHT/2;queuecommand,"Repeat");
		};
	};
end

return t;