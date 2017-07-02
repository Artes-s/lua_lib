
print(' Client Panel Loading.')

surface.CreateFont( 'help', { 
	font = 'Default', 
	size = 20, 
	weight = 700, 
	antialiasing = true, 
	shadow = true, 
	antialias = true 
} )

local function FirstDerma()
	
	print('work')
	
	local dPanelDa = vgui.Create( 'DFrame') 
	
	dPanelDa:SetSize( 900, 450 )
	dPanelDa:SetPos( ScrW() / 2 - 450, ScrH() / 2 - 250)
	
	dPanelDa:SetTitle( ' Hello its my first derma :D ')
	dPanelDa:ShowCloseButton( true )
	
	dPanelDa:MakePopup()
	
	dPanelDa.Paint = function( self, w, h )
	
		draw.RoundedBox( 5, 0, 0, w, h, Color(255, 0, 0, 200) )
		
		draw.RoundedBox( 5, 2, 2, w-4, h-4, Color(50, 50, 50, 200) )
		
	end
	

	local dPanelButton1 = vgui.Create( 'DButton', dPanelDa)
	dPanelButton1:SetSize( 250, 250 )
	dPanelButton1:SetPos( 50, 50 )
	dPanelButton1:SetText( '' )
	
	dPanelButton1.Paint = function( self, w, h )
		draw.RoundedBox( 15, 0, 0, w, h, Color( 50, 50, 50, 200 ) )
		draw.SimpleText( "Кнопочка", "help", w / 2,  h / 2.0, Color( 255, 200, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
	end
	
	dPanelButton1.DoClick = function() 
	
		chat.AddText( Color(255,0,0), ' Привет! Кнопка Нажата ДА!!!! ' )
		
	end
	
end

FirstDerma()


















