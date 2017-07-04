
print('server loa reloading')

util.AddNetworkString( 'firstnet' )
util.AddNetworkString( 'firstnetclient' )

local function plysay( ply, text )
	
	net.Start( 'firstnet' )
		net.WriteString( text )
	net.Broadcast()
	
end

hook.Add( 'PlayerSay', 'playersayany', plysay )

net.Receive( "firstnetclient", function() 

	local polychili = net.ReadString()
	
	print( 'Кто-то сказал ' .. polychili )

end )
