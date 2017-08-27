Scriptname OnAddDisable extends ObjectReference  

ObjectReference Property DisableMarker Auto
{The enabled marker to disable when item is added to actor's inventory.}
ObjectReference Property EnableMarker Auto
{The disabled marker to enable when item is added to actor's inventory.}

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if (akNewContainer == Game.GetPlayer())
		DisableMarker.Disable()
		EnableMarker.Enable()
	endif
EndEvent
