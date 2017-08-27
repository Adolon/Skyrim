Scriptname OnActivatePotion extends ObjectReference  

Potion Property PotionToAdd Auto
{The potion to add to the player's inventory.}
Message Property ToAddMessage Auto
{The message the player receives on activation.}

Event OnActivate(ObjectReference ActivateRef)
	Game.GetPlayer().AddItem(PotionToAdd, 1)
	ToAddMessage.Show()
EndEvent
