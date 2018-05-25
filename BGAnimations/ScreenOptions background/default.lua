local t = Def.ActorFrame{};
InitUserPrefs();
t[#t+1] = Def.ActorFrame {
    OnCommand=function(self)
        if not FILEMAN:DoesFileExist("Save/ThemePrefs.ini") then
            Trace("ThemePrefs doesn't exist; creating file")
            ThemePrefs.ForceSave()
        end
        ThemePrefs.Save()
    end;
	LoadActor("opbg")..{
		InitCommand=cmd(Center);
	};

    Def.Quad{
        InitCommand=cmd(Center;y,SCREEN_CENTER_Y+125;zoomto,600,140;diffuse,0,0,0,0.6);
    };
};
return t;