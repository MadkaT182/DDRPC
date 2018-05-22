local t = Def.ActorFrame {};

for i=1,20 do
	t[#t+1] = Def.ActorFrame{
		GainFocusCommand=cmd(stoptweening;linear,math.random(2,4);diffusealpha,1;);
		LoseFocusCommand=cmd(stoptweening;linear,1;diffusealpha,0;);
		
		LoadActor("Stars/Star1") .. {
			InitCommand=cmd(blend,"BlendMode_Add";spin);
			OnCommand=cmd(diffusealpha,1;x,-SCREEN_CENTER_X;zoom,1);
			OffCommand=cmd(stoptweening);
			GainFocusCommand=cmd(stoptweening;x,-SCREEN_CENTER_X-20;y,math.random(-15,15);linear,math.random(20,25);addx,900;y,math.random(-15,15);queuecommand, "Loop");
			LoopCommand=cmd(x,-SCREEN_CENTER_X-20;linear,math.random(20,25);addx,900;y,math.random(-15,15);queuecommand, "Loop");
		};

		LoadActor("Stars/Star1") .. {
			InitCommand=cmd(blend,"BlendMode_Add";spin);
			OnCommand=cmd(diffusealpha,1;x,SCREEN_CENTER_X;zoom,1);
			OffCommand=cmd(stoptweening);
			GainFocusCommand=cmd(stoptweening;x,SCREEN_CENTER_X+20;y,math.random(-15,15);linear,math.random(20,25);addx,-900;y,math.random(-15,15);queuecommand, "Loop");
			LoopCommand=cmd(x,SCREEN_CENTER_X+20;linear,math.random(20,25);addx,-900;y,math.random(-15,15);queuecommand, "Loop");
		};

	};
end

	t[#t+1] = LoadActor( "TitleScroll Items/Row" )..{
		InitCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;linear,0.3;zoomy,1.1;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;linear,0.3;zoomy,0.8;diffusealpha,0);
		DisabledCommand=cmd(diffuse,0.5,0.5,0.5,1);
	};

	t[#t+1] = LoadActor( "TitleScroll Items/Scroller" )..{
		InitCommand=cmd(diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;linear,0.3;zoomy,1.1;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;linear,0.3;zoomy,0.8;diffusealpha,0);
		DisabledCommand=cmd(diffuse,0.5,0.5,0.5,1);
	};

	t[#t+1] = LoadFont("TitleMenu", "choices") ..{
		Text=string.upper(THEME:GetString( 'ScreenTitleMenu', Var("GameCommand"):GetText() ));
		InitCommand=cmd(shadowlength,2;setstate,5;pause);
		GainFocusCommand=cmd(stoptweening;diffuseshift;effectperiod,0.5;effectcolor1,0.5,1,0.5,1;effectcolor2,0.25,0.5,0.25,1;linear,0;zoom,1.1);
		LoseFocusCommand=cmd(stoptweening;stopeffect;linear,0;zoom,1.0);
		DisabledCommand=cmd(diffuse,0.5,0.5,0.5,1);
	};

return t;