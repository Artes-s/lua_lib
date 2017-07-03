
print(' Client Net Loading.')

net.Receive( "firstnet", function() 

	local polychili = net.ReadString()
	
	LocalPlayer():ChatPrint( LocalPlayer():Name() .. ' сказал ' .. polychili )

end )

local function dasent( ply, text )

	net.Start( 'firstnetclient' )
		net.WriteString( text )
	net.SendToServer()
	
end

hook.Add( 'OnPlayerChat', 'dasent', dasent )
