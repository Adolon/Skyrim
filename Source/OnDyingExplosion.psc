Scriptname OnDyingExplosion extends Actor  

Explosion Property DeathExplosion Auto
{The explosion that plays as the actor dies.}
Container Property DeathContainer Auto
{The container that replaces the actor's body.}

Event onDying(Actor Killer)

	Utility.Wait(1)
	Self.PlaceAtMe(DeathExplosion)
	Utility.Wait(1)
	Disable()
	Delete()
	Self.Disable()
	Self.Delete()
	Self.PlaceAtMe(DeathContainer)

EndEvent