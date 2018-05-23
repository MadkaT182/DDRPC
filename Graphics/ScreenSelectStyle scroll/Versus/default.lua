return Def.ActorFrame{
	OnCommand=cmd(fov,45;y,100;rotationx,45),
	GainFocusCommand=cmd(stoptweening;linear,0.2;diffusealpha,1),
	LoseFocusCommand=cmd(stoptweening;linear,0.2;diffusealpha,0),

	Def.ActorFrame{
	OnCommand=cmd(x,-160);

		Def.ActorFrame{
		OnCommand=cmd(z,100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	
		Def.ActorFrame{
		OnCommand=cmd(z,-100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	
		Def.ActorFrame{
		OnCommand=cmd(z,0;x,-100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	
		Def.ActorFrame{
		OnCommand=cmd(z,0;x,100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	},

	Def.ActorFrame{
	OnCommand=cmd(x,160);

		Def.ActorFrame{
		OnCommand=cmd(z,100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	
		Def.ActorFrame{
		OnCommand=cmd(z,-100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,1,0.5,0.5,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	
		Def.ActorFrame{
		OnCommand=cmd(z,0;x,-100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	
		Def.ActorFrame{
		OnCommand=cmd(z,0;x,100);
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;z,-100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,-50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;x,50;z,-50;rotationy,90;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		
			Def.Quad{
				OnCommand=cmd(vertalign,bottom;zoomto,100,100;fadetop,1;diffuse,0.5,0.5,1,1);
				GainFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,100);
				LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomto,100,0);
			};
		},
	},

}
