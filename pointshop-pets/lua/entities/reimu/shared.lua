ENT.Type = "anim"
ENT.Base = "base_follower"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

function ENT:Initialize()
	
	self.ModelString = 'models/tadano/fumo/pack/reimu.mdl'
	self.ModelScale = 1
	self.OffsetAngle = Angle(0,-90,0)
	self.Particles = "trail-reimu"
	self.Shadows = true;
	
	self.BaseClass.Initialize( self )
	
end
