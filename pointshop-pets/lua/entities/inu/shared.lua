ENT.Type = "anim"
ENT.Base = "base_follower"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

function ENT:Initialize()
	
	self.ModelString = 'models/tadano/fumo/pack/inu.mdl'
	self.ModelScale = 1
	self.ArsenalForward = 0
	self.Particles = "trail-inu"
	self.Shadows = true;
	
	self.BaseClass.Initialize( self )
	
end
