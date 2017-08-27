Scriptname OnActivateArmor extends ObjectReference  

Armor Property ArmorToAdd Auto
{The piece of armor to add to the player's inventory.}
Message Property ToAddMessage Auto
{The message the player receives on activation.}

Event OnActivate(ObjectReference ActivateRef)
	Game.GetPlayer().AddItem(ArmorToAdd, 1)
	ToAddMessage.Show()
EndEvent


