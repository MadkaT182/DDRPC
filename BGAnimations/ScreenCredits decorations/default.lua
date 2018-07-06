local pChar = GAMESTATE:GetCharacter(GAMESTATE:GetMasterPlayerNumber()):GetCharacterID();

local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	LoadActor("background")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("ball")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y-60);
	};
};

if pChar ~= "default" then
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(glowshift;effectcolor1,.66,.66,.66,.3;effectcolor2,.66,.66,.66,0);
		Def.Model {
			Name="Rest";
			Materials="/Characters/"..pChar.."/model.txt";
			Meshes="/Characters/"..pChar.."/model.txt";
			Bones="/Characters/_DDRPC_common_Rest.bones.txt";
			InitCommand=cmd(zoom,14.88;spin;effectmagnitude,0,-40,0;x,SCREEN_CENTER_X-215;y,SCREEN_CENTER_Y+142;rotationy,180;rotationz,180;cullmode,'CullMode_None');
		};
		Def.Model {
			Name="Rest";
			Materials="/Characters/"..pChar.."/model.txt";
			Meshes="/Characters/"..pChar.."/model.txt";
			Bones="/Characters/_DDRPC_common_Rest.bones.txt";
			InitCommand=cmd(zoom,14.88;spin;effectmagnitude,0,-40,0;x,SCREEN_CENTER_X-215;y,SCREEN_CENTER_Y+142;rotationy,180;cullmode,'CullMode_None');
		};
	};
end

t[#t+1] = Def.ActorFrame {
	LoadActor("decorations");
};

return t;