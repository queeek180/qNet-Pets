function EFFECT:Init( data ) 	
	
	local ent = data:GetEntity()
	if ( not IsValid( ent ) ) then return end
	
	self.Owner = ent
	self.Emitter = ParticleEmitter( self.Owner:GetPos() ) 
	
end  

function EFFECT:Think()	
	if ( IsValid( self.Owner ) ) then 		
		
		local pos = self.Owner:GetPos()
		self.Emitter:SetPos( pos )
			
		local particle = self.Emitter:Add( "trails/laser", pos )		
	
		if (particle) then 			
			particle:SetVelocity(Vector(math.random(0,0),math.random(0,0),math.random(0,0))) 			
			particle:SetLifeTime(0)  			
			particle:SetDieTime(1)  			
			particle:SetStartAlpha(255) 			
			particle:SetEndAlpha(0) 			
			particle:SetStartSize(2)  			
			particle:SetEndSize(2) 			
			particle:SetAngles( Angle(0,0,0) ) 			
			particle:SetAngleVelocity( Angle(0,0,0) )  			
			particle:SetRoll(math.Rand( 0, 360 )) 			
			
			// Green n Blue Values
			local val = math.random( 150, 255 )
			particle:SetColor( val, val , val , 150 ) 			
			particle:SetGravity( Vector(math.random(0,5),math.random(0,5),0) )  			
			particle:SetAirResistance(0 )   				
			particle:SetCollide(false) 			
			particle:SetBounce(0) 		
		end 
		
		return true
	end
	
	if ( self.Emitter ) then 
		self.Emitter:Finish()
	end
	
	return false
end  

function EFFECT:Render() 

end
