Scriptname OnActivateBook extends ObjectReference  

Book Property BookToAdd Auto
{The book to add to the player's inventory.}
Message Property ToAddMessage Auto
{The message the player receives on activation.}

Event OnActivate(ObjectReference ActivateRef)
	Game.GetPlayer().AddItem(BookToAdd, 1)
	ToAddMessage.Show()
EndEvent
