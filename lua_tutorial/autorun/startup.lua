
if SERVER then
	
	local files = file.Find( 'server/*.lua', 'LUA' )
	table.foreach( files, function( key, gui )
		include( 'server/' .. gui )
	end )
	
	local files = file.Find( 'client/*.lua', 'LUA' )
	table.foreach( files, function( key, gui )
		AddCSLuaFile( 'client/' .. gui )
	end )
	
end
	
	
if CLIENT then

	local files = file.Find( 'client/*.lua', 'LUA' )
	table.foreach( files, function( key, gui )
		include( 'client/' .. gui )
	end )
	
end

print('StartUp loading done!')