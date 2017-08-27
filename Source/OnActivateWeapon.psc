Scriptname OnActivateWeapon extends ObjectReference  

Weapon Property WeaponToAdd Auto
{The weapon to add to the player's inventory.}
Message Property ToAddMessage Auto
{The message the player receives on activation.}

Event OnActivate(ObjectReference ActivateRef)
	Game.GetPlayer().AddItem(WeaponToAdd, 1)
	ToAddMessage.Show()
EndEvent

