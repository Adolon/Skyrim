Scriptname OnHitEffectShader extends ObjectReference  

EffectShader Property ShaderFXS Auto
{The effect shader that plays when the object reference is hit by an actor.}

Auto State Waiting
	Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
		GoToState("Hit")
	EndEvenT
EndState

State Hit
	Event OnBeginState()
		ShaderFXS.Play(Self, 0.1)
		GoToState("Repeat")
	EndEvent	
EndState

State Repeat
	Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
		GoToState("Hit")
	EndEvent
EndState