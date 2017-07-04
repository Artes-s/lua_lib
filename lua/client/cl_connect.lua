
print(' Client Notify Loading.')

local notify = { }

net.Receive( 'notify', function()

	local tbl = table.Copy( notify )
	
	table.Add( tbl, net.ReadTable() )
	
	chat.AddText( unpack( tbl ) )
	
end)

function ChatPlayer( ply, text, isTeam, isDead)
	
	local Say = {}
	
	if IsDead then table.Add( Say, { Color(255, 0, 0), '*Dead* ' } ) end
	
	if !IsValid( ply ) then table.Add( Say, { Color(150, 150, 150), '*Console* ' } ) else
	
		table.Add( Say, {  Color(55 , 55, 55), '[', team.GetColor( ply:Team() ), team.GetName( ply:Team() ) , 
		Color(55 , 55, 55), '] ', Color(255 , 255, 255), ply:Name() } )
	
	end
	
	table.Add( Say, { Color(255, 255, 255), ' : ', isTeam and Color(0, 255, 0) or Color(255, 255, 255), text } )
		
	chat.AddText( unpack( Say ) )
		
	return true
end

hook.Add( 'OnPlayerChat', 'chatplayer', ChatPlayer)