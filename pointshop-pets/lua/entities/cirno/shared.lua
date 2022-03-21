ENT.Type = "anim"
ENT.Base = "base_follower"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

function ENT:Initialize()
	
	self.ModelString = 'models/tadano/fumo/pack/cirno.mdl'
	self.ModelScale = 1
	self.PetName = "Cirno"
	self.Particles = "trail-cirno"
	self.Shadows = true;
	
	self.BaseClass.Initialize( self )
	
end
