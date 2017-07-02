
print(' Server Connect Loading.')

util.AddNetworkString('notify')

hook.Add( 'PlayerInitialSpawn', 'connectplayer', function( ply )

	if !IsValid( ply ) then return false end
	
	if IsPlayer( ply ) then
	print( 'Player' .. ply:Name() .. ' Зашел на сервер' )
	
	local SendText = { Color(55 , 55, 55), '[', Color(0 , 255, 0), 'System', Color(55 , 55, 55), '] ', Color(210 , 190, 215)
	, ply:Name(), Color(255 , 255, 255), ' вернулся к нам на сервер! ',  Color(255 , 0, 0), 'Ура!' }
	
	net.Start( 'notify' )
		net.WriteTable( SendText )
	net.Broadcast()
	end
	
end)