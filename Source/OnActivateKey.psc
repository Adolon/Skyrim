Scriptname OnActivateKey extends ObjectReference  

Key Property KeyToAdd Auto
{The key to add to the player's inventory.}
Message Property ToAddMessage Auto
{The message the player receives on activation.}

Event OnActivate(ObjectReference ActivateRef)
	Game.GetPlayer().AddItem(KeyToAdd, 1)
	ToAddMessage.Show()
EndEvent