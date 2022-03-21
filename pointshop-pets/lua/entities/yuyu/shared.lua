ENT.Type = "anim"
ENT.Base = "base_follower"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

function ENT:Initialize()
	
	self.ModelString = 'models/tadano/fumo/pack/yuyu.mdl'
	self.ModelScale = 1
	self.OffsetAngle = Angle(0,-100,0)
	self.Particles = "trail-yuyu"
	
	self.BaseClass.Initialize( self )
	
end

