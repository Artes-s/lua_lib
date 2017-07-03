
print(' Server Prop Loading.')

local function CreateProp()
end

local function park()

	if !IsValid(Cube) then	

		Cube = ents.Create("prop_dynamic") 
		Cube:SetModel("models/hunter/blocks/cube8x8x8.mdl")
		Cube:SetPos( Vector(-450,375,-10050) )
		Cube:SetAngles(Angle(0, 0, 90))
		Cube:ManipulateBoneScale( 0, Vector(1.2,1.4,11.4) )
		Cube:SetSolid( SOLID_VPHYSICS )
		Cube:Spawn()
		
	end
	
end
	
hook.Add( 'Think', 'darespawnpark', park )

print(Cube)