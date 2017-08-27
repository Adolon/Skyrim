Scriptname OnActivateVampirism extends ObjectReference  

Spell Property AltarBlessing Auto
{The blessing to be applied if the player has the keyword.}
Keyword Property VampireKeyword Auto
{The keyword the player needs to receive the blessing.}
Message Property BlessingMessage Auto
{The message for receiving the blessing.}
Message Property AltarRemoveMsg Auto
{The message for removing other altar blessings.}
Float Property vampChance = 100.0 Auto
{The chance of receiving vampirism.}
Spell Property TrapDiseaseSanguinareVampiris Auto
{The vampirism spell.}

Event OnActivate(ObjectReference akActionRef)
	if akActionRef == Game.GetPlayer()
		if Game.GetPlayer().HasKeyword(VampireKeyword)
			AltarBlessing.Cast(akActionRef, akActionRef)
			AltarRemoveMsg.Show()
			BlessingMessage.Show()
		else
			ProcessVampireCurse(Game.GetPlayer())
		endif		
	endif
EndEvent

Function ProcessVampireCurse(actor myTarget)
	if Utility.RandomFloat(0.0, 100.0) <= vampChance
		myTarget.DoCombatSpellApply(TrapDiseaseSanguinareVampiris, myTarget)
	endif
endFunction
