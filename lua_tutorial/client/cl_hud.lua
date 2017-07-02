
print(' Client Hud Loading.')

local function HUDHide ( myhud )
	for k, v in pairs{ 'CHudHealth', 'CHudBattery', 'CHudAmmo' } do
		if myhud == v then return false end
	end
end

hook.Add('HUDShouldDraw','HuhHide',HUDHide)

local x = 15
local y = ScrH() - 150

surface.CreateFont('123firstfont', {
	font = 'Open Sans Bold',
	size = 24,
	weight = 600
	} )
	
local function Firsthud()
	
	local ply = LocalPlayer()
	local hp = ply:Health() or 0
	local maxhp = ply:GetMaxHealth() or 0
	local arm = ply:Armor() or 0
	
	draw.RoundedBox(3, x, y, 200, 90, Color(155, 155, 155, 155) )
	
	if hp <= 100 then
		draw.RoundedBox(2, x + 10 , y + 10, math.Clamp(hp, 0, 180)*1.8, 30, Color(255, 0, 0, 205) )
	else
		draw.RoundedBox(2, x + 10 , y + 10, 180, 30, Color(255, 0, 0, 205) )
	end
	draw.RoundedBox(2, x + 10 , y + 10, 180, 30, Color(0, 0, 0, 100) )
	
	if arm <= 100 then
		draw.RoundedBox(2, x + 10 , y + 50, math.Clamp(arm, 0, 180)*1.8, 30, Color(0, 0, 255, 205) )
	else
		draw.RoundedBox(2, x + 10 , y + 50, 180, 30, Color(0, 0, 255, 205) )
	end
	draw.RoundedBox(2, x + 10 , y + 50, 180, 30, Color(0, 0, 0, 100) )

	draw.SimpleText('HP: ' .. hp .. '/' .. maxhp, '123firstfont', x+25, y+15, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText('AR: ' .. arm, '123firstfont', x+25, y+50, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	
	
end


hook.Add('HUDPaint', 'firsthud', Firsthud)